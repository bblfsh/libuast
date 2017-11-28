project (LIBUAST_EXAMPLES C CXX)

set (CMAKE_CXX_STANDARD 11)

add_executable(example example.cc)
target_link_libraries(example uast)
target_link_libraries(example ${libshared})
