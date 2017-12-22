cmake_minimum_required(VERSION 2.8)
project( include )
include_directories(
			${CMAKE_CURRENT_SOURCE_DIR}
			${CMAKE_CURRENT_SOURCE_DIR}/../platform/mbedtls
)
file(GLOB sources "*.c")
file(GLOB headers "*.h")
add_library( include ${sources} ${headers})
target_link_libraries( include pthread mbedtls common)
