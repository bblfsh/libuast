project (LIBUAST_EXAMPLES C CXX)

# Since older versions of CMake don't support C++ 17 standard yet,
# hardcode flags instead of using
# set (CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17" CACHE STRING "" FORCE)

add_executable(example example.cc)
target_link_libraries(example uast)

