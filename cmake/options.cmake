# modules options

option(MOD_BLENDOP "MOD_BLENDOP" ON)
if (MOD_BLENDOP)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_blendop/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_blendop)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODBLENDOP)
endif ()

option(MOD_CD "MOD_CD" ON)
if (MOD_CD)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_cd/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_cd)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODCD)
endif ()

option(MOD_CHIPMUNK "MOD_CHIPMUNK" ON)
if (MOD_CHIPMUNK)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_chipmunk/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_chipmunk)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODCHIPMUNK)
endif ()

option(MOD_CURL "MOD_CURL" ON)
if (MOD_CURL)
    find_package(CURL REQUIRED)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_curl/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_curl ${CURL_INCLUDE_DIRS})
    list(APPEND BGDRTM_LIBS ${CURL_LIBRARIES})
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODCURL)
endif ()

option(MOD_DEBUG "MOD_DEBUG" ON)
if (MOD_DEBUG)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_debug/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_debug)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODDEBUG)
endif ()

option(MOD_DIR "MOD_DIR" ON)
if (MOD_DIR)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_dir/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_dir)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODDIR)
endif ()

option(MOD_DRAW "MOD_DRAW" ON)
if (MOD_DRAW)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_draw/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_draw)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODDRAW)
endif ()

option(MOD_EFFECTS "MOD_EFFECTS" ON)
if (MOD_EFFECTS)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_effects/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_effects)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODEFFECTS)
endif ()

option(MOD_FILE "MOD_FILE" ON)
if (MOD_FILE)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_file/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_file)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODFILE)
endif ()

option(MOD_FLIC "MOD_FLIC" ON)
if (MOD_FLIC)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_flic/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_flic)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODFLIC)
endif ()

option(MOD_FMODEX "MOD_FMODEX" ON)
if (MOD_FMODEX)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_fmodex/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_fmodex)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODFMODEX)
endif ()

option(MOD_FSOCK "MOD_FSOCK" ON)
if (MOD_FSOCK)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_fsock/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_fsock)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODFSOCK)
endif ()

option(MOD_GRPROC "MOD_GRPROC" ON)
if (MOD_GRPROC)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_grproc/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_grproc)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODGRPROC)
endif ()

option(MOD_IAP "MOD_IAP" ON)
if (MOD_IAP)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_iap/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_iap)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODIAP)
endif ()

option(MOD_ICONV "MOD_ICONV" ON)
if (MOD_ICONV)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_iconv/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_iconv)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODICONV)
endif ()

option(MOD_IMAGE "MOD_IMAGE" ON)
if (MOD_IMAGE)
    find_package(SDL2_image REQUIRED)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_image/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_image ${SDL2_IMAGE_INCLUDE_DIRS})
    list(APPEND BGDRTM_LIBS ${SDL2_IMAGE_LIBRARIES})
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODIMAGE)
endif ()

option(MOD_JOY "MOD_JOY" ON)
if (MOD_JOY)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_joy/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_joy)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODJOY)
endif ()

option(MOD_KEY "MOD_KEY" ON)
if (MOD_KEY)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_key/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_key)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODKEY)
endif ()

option(MOD_M7 "MOD_M7" ON)
if (MOD_M7)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_m7/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_m7)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODM7)
endif ()

option(MOD_MAP "MOD_MAP" ON)
if (MOD_MAP)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_map/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_map)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODMAP)
endif ()

option(MOD_MATH "MOD_MATH" ON)
if (MOD_MATH)
    set(MOD_MATHI OFF CACHE BOOL "" FORCE)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_math/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_math)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODMATH)
endif ()

option(MOD_MATHI "MOD_MATHI" OFF)
if (MOD_MATHI)
    set(MOD_MATH OFF CACHE BOOL "" FORCE)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_mathi/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_mathi)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODMATHI)
endif ()

option(MOD_MEM "MOD_MEM" ON)
if (MOD_MEM)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_mem/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_mem)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODMEM)
endif ()

option(MOD_MOUSE "MOD_MOUSE" ON)
if (MOD_MOUSE)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_mouse/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_mouse)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODMOUSE)
endif ()

option(MOD_MULTI "MOD_MULTI" ON)
if (MOD_MULTI)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_multi/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_multi)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODMULTI)
endif ()

option(MOD_PATH "MOD_PATH" ON)
if (MOD_PATH)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_path/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_path)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODPATH)
endif ()

option(MOD_PROC "MOD_PROC" ON)
if (MOD_PROC)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_proc/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_proc)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODPROC)
endif ()

option(MOD_RAND "MOD_RAND" ON)
if (MOD_RAND)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_rand/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_rand)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODRAND)
endif ()

option(MOD_REGEX "MOD_REGEX" ON)
if (MOD_REGEX)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_regex/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_regex)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODREGEX)
endif ()

option(MOD_SAY "MOD_SAY" ON)
if (MOD_SAY)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_say/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_say)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODSAY)
endif ()

option(MOD_SCREEN "MOD_SCREEN" ON)
if (MOD_SCREEN)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_screen/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_screen)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODSCREEN)
endif ()

option(MOD_SCROLL "MOD_SCROLL" ON)
if (MOD_SCROLL)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_scroll/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_scroll)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODSCROLL)
endif ()

option(MOD_SORT "MOD_SORT" ON)
if (MOD_SORT)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_sort/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_sort)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODSORT)
endif ()

option(MOD_SOUND "MOD_SOUND" ON)
if (MOD_SOUND)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_sound/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_sound)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODSOUND)
endif ()

option(MOD_SQLITE3 "MOD_SQLITE3" ON)
if (MOD_SQLITE3)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_sqlite3/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_sqlite3)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODSQLITE3)
endif ()

option(MOD_STRING "MOD_STRING" ON)
if (MOD_STRING)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_string/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_string)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODSTRING)
endif ()

option(MOD_SYS "MOD_SYS" ON)
if (MOD_SYS)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_sys/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_sys)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODSYS)
endif ()

option(MOD_TEXT "MOD_TEXT" ON)
if (MOD_TEXT)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_text/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_text)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODTEXT)
endif ()

option(MOD_THEORA "MOD_THEORA" ON)
if (MOD_THEORA)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_theora/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_theora)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODTHEORA)
endif ()

option(MOD_TIME "MOD_TIME" ON)
if (MOD_TIME)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_time/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_time)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODTIME)
endif ()

option(MOD_TIMERS "MOD_TIMERS" ON)
if (MOD_TIMERS)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_timers/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_timers)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODTIMERS)
endif ()

option(MOD_VIDEO "MOD_VIDEO" ON)
if (MOD_VIDEO)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_video/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_video)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODVIDEO)
endif ()

option(MOD_WM "MOD_WM" ON)
if (MOD_WM)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_wm/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_wm)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODWM)
endif ()

option(MOD_WPAD "MOD_WPAD" ON)
if (MOD_WPAD)
    file(GLOB MOD_SRC ${CMAKE_SOURCE_DIR}/modules/mod_wpad/*.c)
    list(APPEND BGDRTM_SOURCES ${MOD_SRC})
    list(APPEND BGDRTM_INCLUDES ${CMAKE_SOURCE_DIR}/modules/mod_wpad)
else ()
    list(APPEND BGDRTM_CFLAGS -DNO_MODWPAD)
endif ()