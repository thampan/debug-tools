cmake_minimum_required(VERSION 3.3)
project(queue VERSION 1.0)
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
include_directories(include)

set(SOURCES
    src/hello-tp.c
    src/hello.c
)

add_library(tracer STATIC ${SOURCES} ${OUTPUT_NAME})
