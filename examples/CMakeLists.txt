project (LIBUAST_EXAMPLES C CXX)
set (CMAKE_CXX_STANDARD 17)

add_executable(example example.cc)
target_link_libraries(example uast)

