cmake_minimum_required(VERSION 3.3)
project(tracer VERSION 1.0)
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
include_directories(include /usr/include/lttng)
set(SOURCES
src/hello.c
    src/hello-tp.c
)
set (
    HEADERS 
    "include/tracer/hello-tp.h"
)
find_library(LIB_DL dl)
find_library(LIB_LTTNG_UST lttng-ust)
add_library(tracer STATIC ${SOURCES} ${OUTPUT_NAME})
add_executable(myBin ${HEADERS} ${SOURCES})
target_link_libraries(myBin ${LIB_LTTNG_UST} ${LIB_DL})