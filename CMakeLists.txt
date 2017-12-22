
cmake_minimum_required(VERSION 2.8)

project( LoadImage )
find_package( OpenCV REQUIRED )
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set( OPENNI2_INCLUDE /home/viet/Downloads/2-Linux/OpenNI-Linux-x64-2.3/Include)

set( OPENNI2_REDIST  /home/viet/Downloads/2-Linux/OpenNI-Linux-x64-2.3/Redist)
set(CMAKE_REQUIRED_INCLUDES "/usr/local/include" "/usr/local/bin" "/usr/local/lib")
include_directories( ${OPENNI2_INCLUDE}
					${OpenCV_INCLUDE_DIRS}
					${CMAKE_CURRENT_SOURCE_DIR}/mbed
					${CMAKE_CURRENT_SOURCE_DIR}/include
)
add_subdirectory(platform)
add_subdirectory(mbed)
add_subdirectory(include)
link_directories( 
                  ${LIBRARY_OUTPUT_PATH}
)

link_directories ( ${OPENNI2_REDIST} )

set( ex1 test-openni-opencv)

set( source_files1
	main.cpp
)
set( header_files1
	aws_iot_config.h
)

add_executable( ${ex1} ${source_files1} ${header_files1} platform include mbed)

target_link_libraries( ${ex1} ${OpenCV_LIBS} OpenNI2 pthread mbed common include)
target_compile_definitions(${ex1} 
		PRIVATE ENABLE_IOT_DEBUG
		PRIVATE ENABLE_IOT_INFO
		PRIVATE ENABLE_IOT_WARN
		PRIVATE ENABLE_IOT_ERROR)
