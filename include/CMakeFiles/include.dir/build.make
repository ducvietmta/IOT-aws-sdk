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
include include/CMakeFiles/include.dir/depend.make

# Include the progress variables for this target.
include include/CMakeFiles/include.dir/progress.make

# Include the compile flags for this target's objects.
include include/CMakeFiles/include.dir/flags.make

include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o: include/CMakeFiles/include.dir/flags.make
include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o: include/aws_iot_mqtt_client_common_internal.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o   -c /home/viet/demo/include/aws_iot_mqtt_client_common_internal.c

include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.i"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/viet/demo/include/aws_iot_mqtt_client_common_internal.c > CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.i

include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.s"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/viet/demo/include/aws_iot_mqtt_client_common_internal.c -o CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.s

include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o.requires:

.PHONY : include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o.requires

include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o.provides: include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o.requires
	$(MAKE) -f include/CMakeFiles/include.dir/build.make include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o.provides.build
.PHONY : include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o.provides

include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o.provides.build: include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o


include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o: include/CMakeFiles/include.dir/flags.make
include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o: include/aws_iot_mqtt_client_connect.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o   -c /home/viet/demo/include/aws_iot_mqtt_client_connect.c

include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.i"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/viet/demo/include/aws_iot_mqtt_client_connect.c > CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.i

include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.s"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/viet/demo/include/aws_iot_mqtt_client_connect.c -o CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.s

include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o.requires:

.PHONY : include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o.requires

include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o.provides: include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o.requires
	$(MAKE) -f include/CMakeFiles/include.dir/build.make include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o.provides.build
.PHONY : include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o.provides

include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o.provides.build: include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o


include/CMakeFiles/include.dir/aws_iot_shadow.c.o: include/CMakeFiles/include.dir/flags.make
include/CMakeFiles/include.dir/aws_iot_shadow.c.o: include/aws_iot_shadow.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object include/CMakeFiles/include.dir/aws_iot_shadow.c.o"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/include.dir/aws_iot_shadow.c.o   -c /home/viet/demo/include/aws_iot_shadow.c

include/CMakeFiles/include.dir/aws_iot_shadow.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/include.dir/aws_iot_shadow.c.i"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/viet/demo/include/aws_iot_shadow.c > CMakeFiles/include.dir/aws_iot_shadow.c.i

include/CMakeFiles/include.dir/aws_iot_shadow.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/include.dir/aws_iot_shadow.c.s"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/viet/demo/include/aws_iot_shadow.c -o CMakeFiles/include.dir/aws_iot_shadow.c.s

include/CMakeFiles/include.dir/aws_iot_shadow.c.o.requires:

.PHONY : include/CMakeFiles/include.dir/aws_iot_shadow.c.o.requires

include/CMakeFiles/include.dir/aws_iot_shadow.c.o.provides: include/CMakeFiles/include.dir/aws_iot_shadow.c.o.requires
	$(MAKE) -f include/CMakeFiles/include.dir/build.make include/CMakeFiles/include.dir/aws_iot_shadow.c.o.provides.build
.PHONY : include/CMakeFiles/include.dir/aws_iot_shadow.c.o.provides

include/CMakeFiles/include.dir/aws_iot_shadow.c.o.provides.build: include/CMakeFiles/include.dir/aws_iot_shadow.c.o


include/CMakeFiles/include.dir/jsmn.c.o: include/CMakeFiles/include.dir/flags.make
include/CMakeFiles/include.dir/jsmn.c.o: include/jsmn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object include/CMakeFiles/include.dir/jsmn.c.o"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/include.dir/jsmn.c.o   -c /home/viet/demo/include/jsmn.c

include/CMakeFiles/include.dir/jsmn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/include.dir/jsmn.c.i"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/viet/demo/include/jsmn.c > CMakeFiles/include.dir/jsmn.c.i

include/CMakeFiles/include.dir/jsmn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/include.dir/jsmn.c.s"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/viet/demo/include/jsmn.c -o CMakeFiles/include.dir/jsmn.c.s

include/CMakeFiles/include.dir/jsmn.c.o.requires:

.PHONY : include/CMakeFiles/include.dir/jsmn.c.o.requires

include/CMakeFiles/include.dir/jsmn.c.o.provides: include/CMakeFiles/include.dir/jsmn.c.o.requires
	$(MAKE) -f include/CMakeFiles/include.dir/build.make include/CMakeFiles/include.dir/jsmn.c.o.provides.build
.PHONY : include/CMakeFiles/include.dir/jsmn.c.o.provides

include/CMakeFiles/include.dir/jsmn.c.o.provides.build: include/CMakeFiles/include.dir/jsmn.c.o


include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o: include/CMakeFiles/include.dir/flags.make
include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o: include/aws_iot_mqtt_client_subscribe.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o   -c /home/viet/demo/include/aws_iot_mqtt_client_subscribe.c

include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.i"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/viet/demo/include/aws_iot_mqtt_client_subscribe.c > CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.i

include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.s"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/viet/demo/include/aws_iot_mqtt_client_subscribe.c -o CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.s

include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o.requires:

.PHONY : include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o.requires

include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o.provides: include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o.requires
	$(MAKE) -f include/CMakeFiles/include.dir/build.make include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o.provides.build
.PHONY : include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o.provides

include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o.provides.build: include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o


include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.o: include/CMakeFiles/include.dir/flags.make
include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.o: include/aws_iot_mqtt_client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.o"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/include.dir/aws_iot_mqtt_client.c.o   -c /home/viet/demo/include/aws_iot_mqtt_client.c

include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/include.dir/aws_iot_mqtt_client.c.i"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/viet/demo/include/aws_iot_mqtt_client.c > CMakeFiles/include.dir/aws_iot_mqtt_client.c.i

include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/include.dir/aws_iot_mqtt_client.c.s"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/viet/demo/include/aws_iot_mqtt_client.c -o CMakeFiles/include.dir/aws_iot_mqtt_client.c.s

include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.o.requires:

.PHONY : include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.o.requires

include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.o.provides: include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.o.requires
	$(MAKE) -f include/CMakeFiles/include.dir/build.make include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.o.provides.build
.PHONY : include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.o.provides

include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.o.provides.build: include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.o


include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.o: include/CMakeFiles/include.dir/flags.make
include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.o: include/aws_iot_shadow_actions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.o"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/include.dir/aws_iot_shadow_actions.c.o   -c /home/viet/demo/include/aws_iot_shadow_actions.c

include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/include.dir/aws_iot_shadow_actions.c.i"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/viet/demo/include/aws_iot_shadow_actions.c > CMakeFiles/include.dir/aws_iot_shadow_actions.c.i

include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/include.dir/aws_iot_shadow_actions.c.s"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/viet/demo/include/aws_iot_shadow_actions.c -o CMakeFiles/include.dir/aws_iot_shadow_actions.c.s

include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.o.requires:

.PHONY : include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.o.requires

include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.o.provides: include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.o.requires
	$(MAKE) -f include/CMakeFiles/include.dir/build.make include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.o.provides.build
.PHONY : include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.o.provides

include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.o.provides.build: include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.o


include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o: include/CMakeFiles/include.dir/flags.make
include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o: include/aws_iot_mqtt_client_publish.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o   -c /home/viet/demo/include/aws_iot_mqtt_client_publish.c

include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.i"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/viet/demo/include/aws_iot_mqtt_client_publish.c > CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.i

include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.s"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/viet/demo/include/aws_iot_mqtt_client_publish.c -o CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.s

include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o.requires:

.PHONY : include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o.requires

include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o.provides: include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o.requires
	$(MAKE) -f include/CMakeFiles/include.dir/build.make include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o.provides.build
.PHONY : include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o.provides

include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o.provides.build: include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o


include/CMakeFiles/include.dir/aws_iot_shadow_json.c.o: include/CMakeFiles/include.dir/flags.make
include/CMakeFiles/include.dir/aws_iot_shadow_json.c.o: include/aws_iot_shadow_json.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object include/CMakeFiles/include.dir/aws_iot_shadow_json.c.o"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/include.dir/aws_iot_shadow_json.c.o   -c /home/viet/demo/include/aws_iot_shadow_json.c

include/CMakeFiles/include.dir/aws_iot_shadow_json.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/include.dir/aws_iot_shadow_json.c.i"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/viet/demo/include/aws_iot_shadow_json.c > CMakeFiles/include.dir/aws_iot_shadow_json.c.i

include/CMakeFiles/include.dir/aws_iot_shadow_json.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/include.dir/aws_iot_shadow_json.c.s"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/viet/demo/include/aws_iot_shadow_json.c -o CMakeFiles/include.dir/aws_iot_shadow_json.c.s

include/CMakeFiles/include.dir/aws_iot_shadow_json.c.o.requires:

.PHONY : include/CMakeFiles/include.dir/aws_iot_shadow_json.c.o.requires

include/CMakeFiles/include.dir/aws_iot_shadow_json.c.o.provides: include/CMakeFiles/include.dir/aws_iot_shadow_json.c.o.requires
	$(MAKE) -f include/CMakeFiles/include.dir/build.make include/CMakeFiles/include.dir/aws_iot_shadow_json.c.o.provides.build
.PHONY : include/CMakeFiles/include.dir/aws_iot_shadow_json.c.o.provides

include/CMakeFiles/include.dir/aws_iot_shadow_json.c.o.provides.build: include/CMakeFiles/include.dir/aws_iot_shadow_json.c.o


include/CMakeFiles/include.dir/aws_iot_json_utils.c.o: include/CMakeFiles/include.dir/flags.make
include/CMakeFiles/include.dir/aws_iot_json_utils.c.o: include/aws_iot_json_utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object include/CMakeFiles/include.dir/aws_iot_json_utils.c.o"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/include.dir/aws_iot_json_utils.c.o   -c /home/viet/demo/include/aws_iot_json_utils.c

include/CMakeFiles/include.dir/aws_iot_json_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/include.dir/aws_iot_json_utils.c.i"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/viet/demo/include/aws_iot_json_utils.c > CMakeFiles/include.dir/aws_iot_json_utils.c.i

include/CMakeFiles/include.dir/aws_iot_json_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/include.dir/aws_iot_json_utils.c.s"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/viet/demo/include/aws_iot_json_utils.c -o CMakeFiles/include.dir/aws_iot_json_utils.c.s

include/CMakeFiles/include.dir/aws_iot_json_utils.c.o.requires:

.PHONY : include/CMakeFiles/include.dir/aws_iot_json_utils.c.o.requires

include/CMakeFiles/include.dir/aws_iot_json_utils.c.o.provides: include/CMakeFiles/include.dir/aws_iot_json_utils.c.o.requires
	$(MAKE) -f include/CMakeFiles/include.dir/build.make include/CMakeFiles/include.dir/aws_iot_json_utils.c.o.provides.build
.PHONY : include/CMakeFiles/include.dir/aws_iot_json_utils.c.o.provides

include/CMakeFiles/include.dir/aws_iot_json_utils.c.o.provides.build: include/CMakeFiles/include.dir/aws_iot_json_utils.c.o


include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o: include/CMakeFiles/include.dir/flags.make
include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o: include/aws_iot_mqtt_client_yield.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o   -c /home/viet/demo/include/aws_iot_mqtt_client_yield.c

include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.i"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/viet/demo/include/aws_iot_mqtt_client_yield.c > CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.i

include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.s"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/viet/demo/include/aws_iot_mqtt_client_yield.c -o CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.s

include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o.requires:

.PHONY : include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o.requires

include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o.provides: include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o.requires
	$(MAKE) -f include/CMakeFiles/include.dir/build.make include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o.provides.build
.PHONY : include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o.provides

include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o.provides.build: include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o


include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o: include/CMakeFiles/include.dir/flags.make
include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o: include/aws_iot_mqtt_client_unsubscribe.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o   -c /home/viet/demo/include/aws_iot_mqtt_client_unsubscribe.c

include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.i"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/viet/demo/include/aws_iot_mqtt_client_unsubscribe.c > CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.i

include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.s"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/viet/demo/include/aws_iot_mqtt_client_unsubscribe.c -o CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.s

include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o.requires:

.PHONY : include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o.requires

include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o.provides: include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o.requires
	$(MAKE) -f include/CMakeFiles/include.dir/build.make include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o.provides.build
.PHONY : include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o.provides

include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o.provides.build: include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o


include/CMakeFiles/include.dir/aws_iot_shadow_records.c.o: include/CMakeFiles/include.dir/flags.make
include/CMakeFiles/include.dir/aws_iot_shadow_records.c.o: include/aws_iot_shadow_records.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object include/CMakeFiles/include.dir/aws_iot_shadow_records.c.o"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/include.dir/aws_iot_shadow_records.c.o   -c /home/viet/demo/include/aws_iot_shadow_records.c

include/CMakeFiles/include.dir/aws_iot_shadow_records.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/include.dir/aws_iot_shadow_records.c.i"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/viet/demo/include/aws_iot_shadow_records.c > CMakeFiles/include.dir/aws_iot_shadow_records.c.i

include/CMakeFiles/include.dir/aws_iot_shadow_records.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/include.dir/aws_iot_shadow_records.c.s"
	cd /home/viet/demo/include && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/viet/demo/include/aws_iot_shadow_records.c -o CMakeFiles/include.dir/aws_iot_shadow_records.c.s

include/CMakeFiles/include.dir/aws_iot_shadow_records.c.o.requires:

.PHONY : include/CMakeFiles/include.dir/aws_iot_shadow_records.c.o.requires

include/CMakeFiles/include.dir/aws_iot_shadow_records.c.o.provides: include/CMakeFiles/include.dir/aws_iot_shadow_records.c.o.requires
	$(MAKE) -f include/CMakeFiles/include.dir/build.make include/CMakeFiles/include.dir/aws_iot_shadow_records.c.o.provides.build
.PHONY : include/CMakeFiles/include.dir/aws_iot_shadow_records.c.o.provides

include/CMakeFiles/include.dir/aws_iot_shadow_records.c.o.provides.build: include/CMakeFiles/include.dir/aws_iot_shadow_records.c.o


# Object files for target include
include_OBJECTS = \
"CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o" \
"CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o" \
"CMakeFiles/include.dir/aws_iot_shadow.c.o" \
"CMakeFiles/include.dir/jsmn.c.o" \
"CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o" \
"CMakeFiles/include.dir/aws_iot_mqtt_client.c.o" \
"CMakeFiles/include.dir/aws_iot_shadow_actions.c.o" \
"CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o" \
"CMakeFiles/include.dir/aws_iot_shadow_json.c.o" \
"CMakeFiles/include.dir/aws_iot_json_utils.c.o" \
"CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o" \
"CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o" \
"CMakeFiles/include.dir/aws_iot_shadow_records.c.o"

# External object files for target include
include_EXTERNAL_OBJECTS =

include/libinclude.a: include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o
include/libinclude.a: include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o
include/libinclude.a: include/CMakeFiles/include.dir/aws_iot_shadow.c.o
include/libinclude.a: include/CMakeFiles/include.dir/jsmn.c.o
include/libinclude.a: include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o
include/libinclude.a: include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.o
include/libinclude.a: include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.o
include/libinclude.a: include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o
include/libinclude.a: include/CMakeFiles/include.dir/aws_iot_shadow_json.c.o
include/libinclude.a: include/CMakeFiles/include.dir/aws_iot_json_utils.c.o
include/libinclude.a: include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o
include/libinclude.a: include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o
include/libinclude.a: include/CMakeFiles/include.dir/aws_iot_shadow_records.c.o
include/libinclude.a: include/CMakeFiles/include.dir/build.make
include/libinclude.a: include/CMakeFiles/include.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking C static library libinclude.a"
	cd /home/viet/demo/include && $(CMAKE_COMMAND) -P CMakeFiles/include.dir/cmake_clean_target.cmake
	cd /home/viet/demo/include && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/include.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
include/CMakeFiles/include.dir/build: include/libinclude.a

.PHONY : include/CMakeFiles/include.dir/build

include/CMakeFiles/include.dir/requires: include/CMakeFiles/include.dir/aws_iot_mqtt_client_common_internal.c.o.requires
include/CMakeFiles/include.dir/requires: include/CMakeFiles/include.dir/aws_iot_mqtt_client_connect.c.o.requires
include/CMakeFiles/include.dir/requires: include/CMakeFiles/include.dir/aws_iot_shadow.c.o.requires
include/CMakeFiles/include.dir/requires: include/CMakeFiles/include.dir/jsmn.c.o.requires
include/CMakeFiles/include.dir/requires: include/CMakeFiles/include.dir/aws_iot_mqtt_client_subscribe.c.o.requires
include/CMakeFiles/include.dir/requires: include/CMakeFiles/include.dir/aws_iot_mqtt_client.c.o.requires
include/CMakeFiles/include.dir/requires: include/CMakeFiles/include.dir/aws_iot_shadow_actions.c.o.requires
include/CMakeFiles/include.dir/requires: include/CMakeFiles/include.dir/aws_iot_mqtt_client_publish.c.o.requires
include/CMakeFiles/include.dir/requires: include/CMakeFiles/include.dir/aws_iot_shadow_json.c.o.requires
include/CMakeFiles/include.dir/requires: include/CMakeFiles/include.dir/aws_iot_json_utils.c.o.requires
include/CMakeFiles/include.dir/requires: include/CMakeFiles/include.dir/aws_iot_mqtt_client_yield.c.o.requires
include/CMakeFiles/include.dir/requires: include/CMakeFiles/include.dir/aws_iot_mqtt_client_unsubscribe.c.o.requires
include/CMakeFiles/include.dir/requires: include/CMakeFiles/include.dir/aws_iot_shadow_records.c.o.requires

.PHONY : include/CMakeFiles/include.dir/requires

include/CMakeFiles/include.dir/clean:
	cd /home/viet/demo/include && $(CMAKE_COMMAND) -P CMakeFiles/include.dir/cmake_clean.cmake
.PHONY : include/CMakeFiles/include.dir/clean

include/CMakeFiles/include.dir/depend:
	cd /home/viet/demo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/viet/demo /home/viet/demo/include /home/viet/demo /home/viet/demo/include /home/viet/demo/include/CMakeFiles/include.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : include/CMakeFiles/include.dir/depend

