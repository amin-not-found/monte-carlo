cmake_minimum_required(VERSION 3.27)
project(monte_carlo)

set(CMAKE_CXX_STANDARD 17)

find_package(raylib 4.2 REQUIRED)

add_executable(${PROJECT_NAME} main.cpp)

target_link_libraries(${PROJECT_NAME} PRIVATE raylib)