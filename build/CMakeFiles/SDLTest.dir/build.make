# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ludwig/Documents/SDLTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ludwig/Documents/SDLTest/build

# Include any dependencies generated for this target.
include CMakeFiles/SDLTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SDLTest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SDLTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SDLTest.dir/flags.make

CMakeFiles/SDLTest.dir/sources/main.c.o: CMakeFiles/SDLTest.dir/flags.make
CMakeFiles/SDLTest.dir/sources/main.c.o: /Users/ludwig/Documents/SDLTest/sources/main.c
CMakeFiles/SDLTest.dir/sources/main.c.o: CMakeFiles/SDLTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ludwig/Documents/SDLTest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/SDLTest.dir/sources/main.c.o"
	/opt/homebrew/bin/aarch64-apple-darwin22-gcc-12 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/SDLTest.dir/sources/main.c.o -MF CMakeFiles/SDLTest.dir/sources/main.c.o.d -o CMakeFiles/SDLTest.dir/sources/main.c.o -c /Users/ludwig/Documents/SDLTest/sources/main.c

CMakeFiles/SDLTest.dir/sources/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SDLTest.dir/sources/main.c.i"
	/opt/homebrew/bin/aarch64-apple-darwin22-gcc-12 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/ludwig/Documents/SDLTest/sources/main.c > CMakeFiles/SDLTest.dir/sources/main.c.i

CMakeFiles/SDLTest.dir/sources/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SDLTest.dir/sources/main.c.s"
	/opt/homebrew/bin/aarch64-apple-darwin22-gcc-12 $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/ludwig/Documents/SDLTest/sources/main.c -o CMakeFiles/SDLTest.dir/sources/main.c.s

# Object files for target SDLTest
SDLTest_OBJECTS = \
"CMakeFiles/SDLTest.dir/sources/main.c.o"

# External object files for target SDLTest
SDLTest_EXTERNAL_OBJECTS =

SDLTest.app/Contents/MacOS/SDLTest: CMakeFiles/SDLTest.dir/sources/main.c.o
SDLTest.app/Contents/MacOS/SDLTest: CMakeFiles/SDLTest.dir/build.make
SDLTest.app/Contents/MacOS/SDLTest: CMakeFiles/SDLTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/ludwig/Documents/SDLTest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable SDLTest.app/Contents/MacOS/SDLTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SDLTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SDLTest.dir/build: SDLTest.app/Contents/MacOS/SDLTest
.PHONY : CMakeFiles/SDLTest.dir/build

CMakeFiles/SDLTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SDLTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SDLTest.dir/clean

CMakeFiles/SDLTest.dir/depend:
	cd /Users/ludwig/Documents/SDLTest/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ludwig/Documents/SDLTest /Users/ludwig/Documents/SDLTest /Users/ludwig/Documents/SDLTest/build /Users/ludwig/Documents/SDLTest/build /Users/ludwig/Documents/SDLTest/build/CMakeFiles/SDLTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SDLTest.dir/depend
