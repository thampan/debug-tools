cmake_minimum_required(VERSION 3.3)
include_directories(${PROJECT_SOURCE_DIR}/build/lib/)
add_executable(queueTest main.c)
target_link_libraries(queueTest PUBLIC ${PROJECT_SOURCE_DIR}/build/libqueue.a)
