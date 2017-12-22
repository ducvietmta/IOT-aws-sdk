cmake_minimum_required(VERSION 2.8)

project( common )

set( lib_name common)

set(source_files
    timer.c
    timer_platform.h
	timer_interface.h
)

add_library( ${lib_name} ${source_files})
