cmake_minimum_required (VERSION 2.6)
project (LIBUAST C)

set(CMAKE_C_STANDARD 99)

# Required dependencies
find_package(LibXml2 REQUIRED)

# Source files
set(libsrc
  ${CMAKE_CURRENT_BINARY_DIR}/src/uast.c
  ${CMAKE_CURRENT_BINARY_DIR}/src/roles.c)

# Header files
set(libinclude
  ${CMAKE_CURRENT_BINARY_DIR}/src/uast.h
  ${CMAKE_CURRENT_BINARY_DIR}/src/roles.h
  ${CMAKE_CURRENT_BINARY_DIR}/src/node-iface.h
  ${CMAKE_CURRENT_BINARY_DIR}/src/find-ctx.h)

# Dependencies
set(libdep ${LIBXML2_LIBRARIES})

# Include headers
include_directories(
  ${LIBXML2_INCLUDE_DIR}
  ${CMAKE_BINARY_DIR})

# Generate libuast.a static library
add_library(uast STATIC ${libsrc})
target_link_libraries(uast ${libdep})
set_target_properties(uast PROPERTIES PUBLIC_HEADER "${libinclude}")

# Install static library
install(
  TARGETS       uast
  ARCHIVE       DESTINATION lib
  LIBRARY       DESTINATION lib
  PUBLIC_HEADER DESTINATION include/libuast
)

# Adds examples
add_subdirectory(examples)

# Add tests
enable_testing()
add_subdirectory(tests)
