cmake_minimum_required(VERSION 2.8)

project( mbedtls )

set( lib_name mbedtls)
include_directories(
		${CMAKE_CURRENT_SOURCE_DIR}/mbed
)
set(source_files
    network_mbedtls_wrapper.c
    network_platform.h
)

add_library( ${lib_name} ${source_files})
target_link_libraries( ${lib_name} mbed)
