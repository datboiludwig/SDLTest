cmake_minimum_required(VERSION 3.12)

project(SDLTest)

link_directories(${CMAKE_SOURCE_DIR}/lib)

file(GLOB_RECURSE SDLTest_SOURCES CONFIGURE_DEPENDS "sources/*.c")
file(GLOB_RECURSE SDLTest_HEADERS CONFIGURE_DEPENDS "headers/*.h")

set(SDLTest_INCLUDE_DIRS "")

foreach(_headerFile ${SDLTest_HEADERS})
    get_filename_component(_dir ${_headerFile} PATH)
    list(APPEND SDLTest_INCLUDE_DIRS ${_dir})
endforeach()

list(REMOVE_DUPLICATES SDLTest_INCLUDE_DIRS)

if(WIN32)
    add_executable(SDLTest ${SDLTest_SOURCES})
else()
    add_executable(SDLTest MACOSX_BUNDLE ${SDLTest_SOURCES})
endif()

target_include_directories(SDLTest PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/inc PRIVATE ${SDLTest_INCLUDE_DIRS})

if(APPLE)
    find_library(SDL SDL2)
    target_link_libraries(SDLTest PRIVATE ${SDL})
else()
    target_link_libraries(SDLTest PRIVATE mingw32 SDL2main SDL2.dll)
endif()