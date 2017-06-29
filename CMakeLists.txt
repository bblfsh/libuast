
cmake_minimum_required (VERSION 2.6)
project (LIBUAST C CXX)

set (CMAKE_CXX_STANDARD 11)

find_package(ZLIB REQUIRED)
find_package(LibXml2 REQUIRED)
find_package(LibLZMA REQUIRED)

set(libsrc node.cpp uast.cpp)

include_directories(
  ${ZLIB_INCLUDE_DIRS}
  ${LIBLZMA_INCLUDE_DIRS}
  ${LIBXML2_INCLUDE_DIR}
  ${CMAKE_BINARY_DIR})

add_library(uast STATIC ${libsrc})

add_executable(example1.out test.cpp)

target_link_libraries(example1.out
  uast
  ${ZLIB_LIBRARIES}
  ${LIBXML2_LIBRARIES}
  ${LIBLZMA_LIBRARIES})
