cmake_minimum_required (VERSION 2.6)
project (LIBUAST C)

# Required dependencies
find_package(LibXml2 REQUIRED)

# Source files
set(libsrc src/uast.c src/roles.c)

# Header files
set(libinclude src/uast.h src/roles.h src/node-iface.h)

# Include header
include_directories(
  ${LIBXML2_INCLUDE_DIR}
  ${CMAKE_BINARY_DIR})

# Generate libuast.a static library
add_library(uast STATIC ${libsrc})

target_link_libraries(uast ${LIBXML2_LIBRARIES})
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

add_subdirectory(examples)
