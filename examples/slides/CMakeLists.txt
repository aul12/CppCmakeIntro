cmake_minimum_required(VERSION 3.10)

set(STANDARD 17)
set(COMMON_FLAGS "-Wall")

if (CMAKE_BUILD_TYPE STREQUAL "Release")
    set(COMMON_FLAGS "${COMMON_FLAGS} -O3")
endif ()

set(CMAKE_C_STANDARD ${STANDARD})
set(CMAKE_CXX_STANDARD ${STANDARD})
set(CMAKE_C_FLAGS ${COMMON_FLAGS})
set(CMAKE_CXX_FLAGS ${COMMON_FLAGS})

project(MyProject)
add_executable(${PROJECT_NAME} main.c mylib.c)
target_link_libraries(${PROJECT_NAME} pthread)
add_subdirectory(Tests)
