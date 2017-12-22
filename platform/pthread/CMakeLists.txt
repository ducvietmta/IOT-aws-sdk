cmake_minimum_required(VERSION 2.8)

project( pthread )

set( lib_name pthread)
include_directories( 
					${CMAKE_CURRENT_SOURCE_DIR}/include
)
set(source_files
    threads_platform.h
    threads_pthread_wrapper.c
)

add_library( ${lib_name} ${source_files})
