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

if(APPLE)
    target_include_directories(SDLTest PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/lib/SDL2.framework/Headers ${CMAKE_CURRENT_SOURCE_DIR}/lib/SDL2_image.framework/Headers ${SDLTest_INCLUDE_DIRS})
else()
    target_include_directories(SDLTest PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/inc PRIVATE ${SDLTest_INCLUDE_DIRS})
endif()

if(APPLE)
    find_library(SDL SDL2)
    find_library(SDL_image SDL2_image)
    target_link_libraries(SDLTest PRIVATE ${SDL} ${SDL_image})
else()
    target_link_libraries(SDLTest PRIVATE mingw32 SDL2main SDL2.dll SDL2_image.dll)
endif()

file(GLOB_RECURSE SDLTest_ASSETS CONFIGURE_DEPENDS "assets/*.png")

if(APPLE)
    add_custom_command(TARGET SDLTest POST_BUILD COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_CURRENT_BINARY_DIR}/SDLTest.app/Contents/MacOS/assets)
    add_custom_command(
        TARGET SDLTest POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy
        ${SDLTest_ASSETS}
        ${CMAKE_CURRENT_BINARY_DIR}/SDLTest.app/Contents/MacOS/assets)
else()
    add_custom_command(
        TARGET SDLTest POST_BUILD
        COMMAND ${CMAKE_COMMAND} -E copy
        ${SDLTest_ASSETS}
        ${CMAKE_CURRENT_BINARY_DIR}/assets)
endif()