# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/viet/demo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/viet/demo

# Include any dependencies generated for this target.
include platform/common/CMakeFiles/common.dir/depend.make

# Include the progress variables for this target.
include platform/common/CMakeFiles/common.dir/progress.make

# Include the compile flags for this target's objects.
include platform/common/CMakeFiles/common.dir/flags.make

platform/common/CMakeFiles/common.dir/timer.c.o: platform/common/CMakeFiles/common.dir/flags.make
platform/common/CMakeFiles/common.dir/timer.c.o: platform/common/timer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object platform/common/CMakeFiles/common.dir/timer.c.o"
	cd /home/viet/demo/platform/common && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/common.dir/timer.c.o   -c /home/viet/demo/platform/common/timer.c

platform/common/CMakeFiles/common.dir/timer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/common.dir/timer.c.i"
	cd /home/viet/demo/platform/common && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/viet/demo/platform/common/timer.c > CMakeFiles/common.dir/timer.c.i

platform/common/CMakeFiles/common.dir/timer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/common.dir/timer.c.s"
	cd /home/viet/demo/platform/common && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/viet/demo/platform/common/timer.c -o CMakeFiles/common.dir/timer.c.s

platform/common/CMakeFiles/common.dir/timer.c.o.requires:

.PHONY : platform/common/CMakeFiles/common.dir/timer.c.o.requires

platform/common/CMakeFiles/common.dir/timer.c.o.provides: platform/common/CMakeFiles/common.dir/timer.c.o.requires
	$(MAKE) -f platform/common/CMakeFiles/common.dir/build.make platform/common/CMakeFiles/common.dir/timer.c.o.provides.build
.PHONY : platform/common/CMakeFiles/common.dir/timer.c.o.provides

platform/common/CMakeFiles/common.dir/timer.c.o.provides.build: platform/common/CMakeFiles/common.dir/timer.c.o


# Object files for target common
common_OBJECTS = \
"CMakeFiles/common.dir/timer.c.o"

# External object files for target common
common_EXTERNAL_OBJECTS =

platform/common/libcommon.a: platform/common/CMakeFiles/common.dir/timer.c.o
platform/common/libcommon.a: platform/common/CMakeFiles/common.dir/build.make
platform/common/libcommon.a: platform/common/CMakeFiles/common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libcommon.a"
	cd /home/viet/demo/platform/common && $(CMAKE_COMMAND) -P CMakeFiles/common.dir/cmake_clean_target.cmake
	cd /home/viet/demo/platform/common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
platform/common/CMakeFiles/common.dir/build: platform/common/libcommon.a

.PHONY : platform/common/CMakeFiles/common.dir/build

platform/common/CMakeFiles/common.dir/requires: platform/common/CMakeFiles/common.dir/timer.c.o.requires

.PHONY : platform/common/CMakeFiles/common.dir/requires

platform/common/CMakeFiles/common.dir/clean:
	cd /home/viet/demo/platform/common && $(CMAKE_COMMAND) -P CMakeFiles/common.dir/cmake_clean.cmake
.PHONY : platform/common/CMakeFiles/common.dir/clean

platform/common/CMakeFiles/common.dir/depend:
	cd /home/viet/demo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/viet/demo /home/viet/demo/platform/common /home/viet/demo /home/viet/demo/platform/common /home/viet/demo/platform/common/CMakeFiles/common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platform/common/CMakeFiles/common.dir/depend

