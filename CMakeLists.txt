cmake_minimum_required (VERSION 2.6)
project (LIBUAST C CXX)

# C++ 11 required
set (CMAKE_CXX_STANDARD 11)

# Required dependencies
find_package(LibXml2 REQUIRED)

# Source files
set(libsrc node.cpp roles.cpp)

# Header files
set(libinclude node.h roles.h)

# Include header
include_directories(
  ${LIBXML2_INCLUDE_DIR}
  ${CMAKE_BINARY_DIR})

# Generate libuast.a static library
add_library(uast STATIC ${libsrc})

set_target_properties(uast PROPERTIES PUBLIC_HEADER "${libinclude}")

# Install static library
install(
  TARGETS       uast
  ARCHIVE       DESTINATION lib
  LIBRARY       DESTINATION lib
  PUBLIC_HEADER DESTINATION include/libuast
)

############################################
# Generate executable to test static lib
############################################

add_executable(example1.out test.cpp)

target_link_libraries(example1.out
  uast
  ${LIBXML2_LIBRARIES})
