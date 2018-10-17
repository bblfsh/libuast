cmake_minimum_required(VERSION 3.9)

project (LIBUAST_TESTS C CXX)

set (CMAKE_CXX_STANDARD 11)

enable_testing()

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")
find_package(CUnit)
find_package(Uast)

include_directories(. ${CHECK_INCLUDE_DIRS} ${CUNIT_INCLUDE_DIRS} ${UAST_INCLUDE_DIRS})

add_definitions(-DTESTING)
add_executable(testsuite main.cc ${libsrc})
target_link_libraries(testsuite ${CUNIT_LIBRARIES} ${UAST_LIBRARIES} ${libdep})

add_test(testsuite ${CMAKE_CURRENT_BINARY_DIR}/testsuite)
