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
include CMakeFiles/test-openni-opencv.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test-openni-opencv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test-openni-opencv.dir/flags.make

CMakeFiles/test-openni-opencv.dir/main.cpp.o: CMakeFiles/test-openni-opencv.dir/flags.make
CMakeFiles/test-openni-opencv.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test-openni-opencv.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-openni-opencv.dir/main.cpp.o -c /home/viet/demo/main.cpp

CMakeFiles/test-openni-opencv.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-openni-opencv.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/viet/demo/main.cpp > CMakeFiles/test-openni-opencv.dir/main.cpp.i

CMakeFiles/test-openni-opencv.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-openni-opencv.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/viet/demo/main.cpp -o CMakeFiles/test-openni-opencv.dir/main.cpp.s

CMakeFiles/test-openni-opencv.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/test-openni-opencv.dir/main.cpp.o.requires

CMakeFiles/test-openni-opencv.dir/main.cpp.o.provides: CMakeFiles/test-openni-opencv.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/test-openni-opencv.dir/build.make CMakeFiles/test-openni-opencv.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/test-openni-opencv.dir/main.cpp.o.provides

CMakeFiles/test-openni-opencv.dir/main.cpp.o.provides.build: CMakeFiles/test-openni-opencv.dir/main.cpp.o


# Object files for target test-openni-opencv
test__openni__opencv_OBJECTS = \
"CMakeFiles/test-openni-opencv.dir/main.cpp.o"

# External object files for target test-openni-opencv
test__openni__opencv_EXTERNAL_OBJECTS =

test-openni-opencv: CMakeFiles/test-openni-opencv.dir/main.cpp.o
test-openni-opencv: CMakeFiles/test-openni-opencv.dir/build.make
test-openni-opencv: /opt/ros/lunar/lib/libopencv_stitching3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_superres3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_videostab3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_aruco3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_bgsegm3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_bioinspired3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_ccalib3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_cvv3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_dpm3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_face3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_fuzzy3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_hdf3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_img_hash3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_line_descriptor3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_optflow3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_reg3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_rgbd3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_saliency3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_stereo3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_structured_light3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_surface_matching3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_tracking3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_xfeatures2d3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_ximgproc3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_xobjdetect3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_xphoto3.so.3.3.1
test-openni-opencv: platform/pthread/libpthread.a
test-openni-opencv: mbed/libmbed.a
test-openni-opencv: platform/common/libcommon.a
test-openni-opencv: include/libinclude.a
test-openni-opencv: /opt/ros/lunar/lib/libopencv_shape3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_photo3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_calib3d3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_viz3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_phase_unwrapping3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_video3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_datasets3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_plot3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_text3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_dnn3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_features2d3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_flann3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_highgui3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_ml3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_videoio3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_imgcodecs3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_objdetect3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_imgproc3.so.3.3.1
test-openni-opencv: /opt/ros/lunar/lib/libopencv_core3.so.3.3.1
test-openni-opencv: platform/pthread/libpthread.a
test-openni-opencv: platform/common/libcommon.a
test-openni-opencv: platform/mbedtls/libmbedtls.a
test-openni-opencv: mbed/libmbed.a
test-openni-opencv: CMakeFiles/test-openni-opencv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/viet/demo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-openni-opencv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-openni-opencv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test-openni-opencv.dir/build: test-openni-opencv

.PHONY : CMakeFiles/test-openni-opencv.dir/build

CMakeFiles/test-openni-opencv.dir/requires: CMakeFiles/test-openni-opencv.dir/main.cpp.o.requires

.PHONY : CMakeFiles/test-openni-opencv.dir/requires

CMakeFiles/test-openni-opencv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test-openni-opencv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test-openni-opencv.dir/clean

CMakeFiles/test-openni-opencv.dir/depend:
	cd /home/viet/demo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/viet/demo /home/viet/demo /home/viet/demo /home/viet/demo /home/viet/demo/CMakeFiles/test-openni-opencv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test-openni-opencv.dir/depend

