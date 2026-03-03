cmake_minimum_required(VERSION 3.10)

project(LearnOpenGL)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_subdirectory(third_party/glad)

add_executable(${PROJECT_NAME} ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cc)
target_link_libraries(${PROJECT_NAME} PRIVATE GLAD GL dl glfw)
