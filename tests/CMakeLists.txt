project (LIBUAST_TESTS C CXX)

set (CMAKE_CXX_STANDARD 11)

enable_testing()

include_directories(. ../src ${CHECK_INCLUDE_DIRS} ${CUNIT_INCLUDE_DIRS})

add_definitions(-DTESTING)
add_executable(testsuite main.cc ../src/testing_tools.c ${libsrc})
target_link_libraries(testsuite ${CUNIT_LIBRARIES} ${libdep})

add_test(testsuite ${CMAKE_CURRENT_BINARY_DIR}/testsuite)
