project (LIBUAST_EXAMPLES C CXX)
set (CMAKE_CXX_STANDARD 11)

add_executable(example1 example1.cpp)
target_link_libraries(example1 uast)

