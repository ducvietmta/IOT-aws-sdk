cmake_minimum_required(VERSION 2.8)
project( mbed )
file(GLOB sources
    "*.c"
)
file(GLOB headers
    "*.h"
)
add_library( mbed ${sources} ${headers})
