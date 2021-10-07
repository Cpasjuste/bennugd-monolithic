cmake_minimum_required(VERSION 3.4)

# target platform
option(PLATFORM_SWITCH "Nintendo Switch target platform" OFF)
option(PLATFORM_VITA "Sony PS Vita target platform" OFF)
include(cmake/toolchain.cmake)

project(sorr C)

set(BGDRTM_SOURCES "")
set(BGDRTM_INCLUDES "")
set(BGDRTM_CFLAGS "-D__BGDRTM__")
set(BGDRTM_LIBS "")

if (PLATFORM_VITA)
    list(APPEND BGDRTM_CFLAGS
            -DTARGET_VITA -D__MONOLITHIC__ -DNO_MODSENSOR -DVERSION="1.0.0"
            -Dmemcpy=sceClibMemcpy -Dmemcmp=sceClibMemcmp -Dstrcmp=sceClibStrcmp
            -Dstrncmp=sceClibStrncmp -Dstrncpy=sceClibStrncpy
            -Ofast -ffast-math -ftree-vectorize -mfpu=neon
            )
elseif (PLATFORM_SWITCH)
    list(APPEND BGDRTM_CFLAGS -DTARGET_SWITCH -D__MONOLITHIC__ -DNO_MODSENSOR -DVERSION="1.0.0")
    list(APPEND BGDRTM_LIBS EGL glapi drm_nouveau nx stdc++ modplug opusfile opus mpg123 vorbisfile vorbis ogg)
else ()
    list(APPEND BGDRTM_CFLAGS -DTARGET_LINUX -D__MONOLITHIC__ -DNO_MODSENSOR -DVERSION="1.0.0")
    list(APPEND BGDRTM_LIBS dl)
endif ()

# add tre lib
add_subdirectory(3rdparty/tre)

# common deps (todo: find_package in options.cmake)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake")
find_package(SDL2 2.0.4 REQUIRED)
find_package(SDL2_mixer REQUIRED)
find_package(ZLIB REQUIRED)
find_package(PNG REQUIRED)
find_package(OGG REQUIRED)
find_package(Vorbis REQUIRED)

# common sources
file(GLOB BGDRTM_SOURCES
        ${CMAKE_SOURCE_DIR}/core/common/*.c
        ${CMAKE_SOURCE_DIR}/core/bgdrtm/src/*.c
        ${CMAKE_SOURCE_DIR}/modules/libbgload/*.c
        ${CMAKE_SOURCE_DIR}/modules/libblit/*.c
        ${CMAKE_SOURCE_DIR}/modules/libdraw/*.c
        ${CMAKE_SOURCE_DIR}/modules/libfont/*.c
        ${CMAKE_SOURCE_DIR}/modules/libgrbase/*.c
        ${CMAKE_SOURCE_DIR}/modules/libjoy/*.c
        ${CMAKE_SOURCE_DIR}/modules/libkey/*.c
        ${CMAKE_SOURCE_DIR}/modules/libmouse/*.c
        ${CMAKE_SOURCE_DIR}/modules/librender/*.c
        ${CMAKE_SOURCE_DIR}/modules/libscroll/*.c
        ${CMAKE_SOURCE_DIR}/modules/libsdlhandler/*.c
        ${CMAKE_SOURCE_DIR}/modules/libtext/*.c
        ${CMAKE_SOURCE_DIR}/modules/libvideo/*.c
        ${CMAKE_SOURCE_DIR}/modules/libwm/*.c
        )
list(REMOVE_ITEM BGDRTM_SOURCES ${CMAKE_SOURCE_DIR}/core/common/b_crypt.c)

list(APPEND BGDRTM_INCLUDES
        ${SDL2_INCLUDE_DIR}
        ${SDL2_MIXER_INCLUDE_DIRS}
        ${ZLIB_INCLUDE_DIRS}
        ${PNG_INCLUDE_DIR}
        ${TRE_INCLUDE_DIR}
        ${CMAKE_SOURCE_DIR}/3rdparty/tre/lib
        ${CMAKE_SOURCE_DIR}/core/bgdi/include
        ${CMAKE_SOURCE_DIR}/core/bgdrtm/include
        ${CMAKE_SOURCE_DIR}/core/include
        ${CMAKE_SOURCE_DIR}/modules/libbgload
        ${CMAKE_SOURCE_DIR}/modules/libblit
        ${CMAKE_SOURCE_DIR}/modules/libdraw
        ${CMAKE_SOURCE_DIR}/modules/libfont
        ${CMAKE_SOURCE_DIR}/modules/libgrbase
        ${CMAKE_SOURCE_DIR}/modules/libjoy
        ${CMAKE_SOURCE_DIR}/modules/libkey
        ${CMAKE_SOURCE_DIR}/modules/libmouse
        ${CMAKE_SOURCE_DIR}/modules/librender
        ${CMAKE_SOURCE_DIR}/modules/libscroll
        ${CMAKE_SOURCE_DIR}/modules/libsdlhandler
        ${CMAKE_SOURCE_DIR}/modules/libtext
        ${CMAKE_SOURCE_DIR}/modules/libvideo
        ${CMAKE_SOURCE_DIR}/modules/libwm
        )

# build options
set(MOD_CHIPMUNK OFF CACHE BOOL "" FORCE)
set(MOD_CD OFF CACHE BOOL "" FORCE)
set(MOD_CURL OFF CACHE BOOL "" FORCE)
set(MOD_DEBUG OFF CACHE BOOL "" FORCE)
set(MOD_FMODEX OFF CACHE BOOL "" FORCE)
set(MOD_FSOCK OFF CACHE BOOL "" FORCE)
set(MOD_IAP OFF CACHE BOOL "" FORCE)
set(MOD_IMAGE OFF CACHE BOOL "" FORCE)
set(MOD_SQLITE3 OFF CACHE BOOL "" FORCE)
set(MOD_WPAD OFF CACHE BOOL "" FORCE)
include(${CMAKE_SOURCE_DIR}/cmake/options.cmake)

# bgdrtm library
add_library(bgdrtm STATIC ${BGDRTM_SOURCES})
target_compile_definitions(bgdrtm PUBLIC ${BGDRTM_CFLAGS})
target_include_directories(bgdrtm PUBLIC ${BGDRTM_INCLUDES})

# sorr executable
add_executable(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/core/bgdi/src/main.c)
target_compile_definitions(${PROJECT_NAME} PUBLIC -D__BGDI__)
# compiler flags
include(cmake/compiler_flags.cmake)
# sorr libs
target_link_libraries(${PROJECT_NAME}
        bgdrtm
        libtre
        ${SDL2_MIXER_LIBRARIES}
        ${SDL2_LIBRARIES}
        ${PNG_LIBRARIES}
        ${ZLIB_LIBRARIES}
        ${VORBIS_LIBRARY}
        ${OGG_LIBRARY}
        ${BGDRTM_LIBS}
        m
        )

if (PLATFORM_VITA)
    set(VITA_APP_NAME "SoRR")
    set(VITA_TITLEID "SORR00001")
    set(VITA_VERSION "01.00")
    set(VITA_MKSFOEX_FLAGS "${VITA_MKSFOEX_FLAGS} -d PARENTAL_LEVEL=1")
    set(VITA_MKSFOEX_FLAGS "${VITA_MKSFOEX_FLAGS} -d ATTRIBUTE2=12")

    vita_create_self(${PROJECT_NAME}.self ${PROJECT_NAME} UNSAFE)
    vita_create_vpk(${PROJECT_NAME}.vpk ${VITA_TITLEID} ${PROJECT_NAME}.self
            VERSION ${VITA_VERSION}
            NAME ${VITA_APP_NAME}
            FILE sce_sys sce_sys
            )
elseif (PLATFORM_SWITCH)
    nx_generate_nacp(${PROJECT_NAME}.nacp NAME ${PROJECT_NAME} AUTHOR "isage & cpasjuste" VERSION "1.0")
    nx_create_nro(${PROJECT_NAME} NACP ${PROJECT_NAME}.nacp)
endif ()