# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.12.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.12.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Nathauy/Desktop/jalon01_stub/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Nathauy/Desktop/jalon01_stub/build

# Include any dependencies generated for this target.
include jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/depend.make

# Include the progress variables for this target.
include jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/progress.make

# Include the compile flags for this target's objects.
include jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/flags.make

jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/client.c.o: jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/flags.make
jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/client.c.o: /Users/Nathauy/Desktop/jalon01_stub/src/jalon01/client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Nathauy/Desktop/jalon01_stub/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/client.c.o"
	cd /Users/Nathauy/Desktop/jalon01_stub/build/jalon01 && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RE216_JALON01_CLIENT.dir/client.c.o   -c /Users/Nathauy/Desktop/jalon01_stub/src/jalon01/client.c

jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RE216_JALON01_CLIENT.dir/client.c.i"
	cd /Users/Nathauy/Desktop/jalon01_stub/build/jalon01 && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Nathauy/Desktop/jalon01_stub/src/jalon01/client.c > CMakeFiles/RE216_JALON01_CLIENT.dir/client.c.i

jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RE216_JALON01_CLIENT.dir/client.c.s"
	cd /Users/Nathauy/Desktop/jalon01_stub/build/jalon01 && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Nathauy/Desktop/jalon01_stub/src/jalon01/client.c -o CMakeFiles/RE216_JALON01_CLIENT.dir/client.c.s

# Object files for target RE216_JALON01_CLIENT
RE216_JALON01_CLIENT_OBJECTS = \
"CMakeFiles/RE216_JALON01_CLIENT.dir/client.c.o"

# External object files for target RE216_JALON01_CLIENT
RE216_JALON01_CLIENT_EXTERNAL_OBJECTS =

jalon01/RE216_JALON01_CLIENT: jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/client.c.o
jalon01/RE216_JALON01_CLIENT: jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/build.make
jalon01/RE216_JALON01_CLIENT: jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Nathauy/Desktop/jalon01_stub/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable RE216_JALON01_CLIENT"
	cd /Users/Nathauy/Desktop/jalon01_stub/build/jalon01 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RE216_JALON01_CLIENT.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/build: jalon01/RE216_JALON01_CLIENT

.PHONY : jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/build

jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/clean:
	cd /Users/Nathauy/Desktop/jalon01_stub/build/jalon01 && $(CMAKE_COMMAND) -P CMakeFiles/RE216_JALON01_CLIENT.dir/cmake_clean.cmake
.PHONY : jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/clean

jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/depend:
	cd /Users/Nathauy/Desktop/jalon01_stub/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Nathauy/Desktop/jalon01_stub/src /Users/Nathauy/Desktop/jalon01_stub/src/jalon01 /Users/Nathauy/Desktop/jalon01_stub/build /Users/Nathauy/Desktop/jalon01_stub/build/jalon01 /Users/Nathauy/Desktop/jalon01_stub/build/jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : jalon01/CMakeFiles/RE216_JALON01_CLIENT.dir/depend

