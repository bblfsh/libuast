project (LIBUAST_TESTS C CXX)
set (CMAKE_CXX_STANDARD 11)

enable_testing()

include_directories(. ../src ${CHECK_INCLUDE_DIRS})

add_executable(testing_exec main.cpp)
target_link_libraries(testing_exec
  uast
  cunit
)
add_test(testing_exec ${CMAKE_CURRENT_BINARY_DIR}/testing_exec)
