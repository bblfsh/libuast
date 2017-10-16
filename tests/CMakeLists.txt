project (LIBUAST_TESTS C CXX)

# Since older versions of CMake don't support C++ 17 standard yet,
# hardcode flags instead of using
# set (CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17" CACHE STRING "" FORCE)

enable_testing()

include_directories(. ../src ${CHECK_INCLUDE_DIRS} ${CUNIT_INCLUDE_DIRS})

add_definitions(-DTESTING)
add_executable(testsuite main.cc ../src/testing_tools.c ${libsrc})
target_link_libraries(testsuite ${CUNIT_LIBRARIES} ${libdep})

add_test(testsuite ${CMAKE_CURRENT_BINARY_DIR}/testsuite)
