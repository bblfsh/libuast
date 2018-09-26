cmake_minimum_required(VERSION 3.9)

project (LIBUAST_EXAMPLES C CXX)

set (CMAKE_CXX_STANDARD 11)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")
find_package(Uast)

include_directories(. ../src/ ${CHECK_INCLUDE_DIRS}  ${UAST_INCLUDE_DIRS})

add_executable(example example.cpp ${libsrc})
target_link_libraries(example ${UAST_LIBRARIES})
target_link_libraries(example ${libshared})
