cmake_minimum_required(VERSION 3.10)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_C_FLAGS "-Wall")
set(CMAKE_CXX_FLAGS "-Wall")

project(MyProject)
add_executable(${PROJECT_NAME} main.c mylib.c)
target_link_libraries(${PROJECT_NAME} pthread)
add_subdirectory(Tests)
