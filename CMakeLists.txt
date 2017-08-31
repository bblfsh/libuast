cmake_minimum_required (VERSION 2.6)
cmake_policy(SET CMP0048 NEW)
project (LIBUAST
  VERSION 0.0.0
  LANGUAGES C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_MACOSX_RPATH ON)  # fixes CMP0042

set(OUTPUT_PATH "${CMAKE_CURRENT_BINARY_DIR}/lib")

# Required dependencies
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")
find_package (CUnit REQUIRED)
find_package(LibXml2 REQUIRED)

# Library name
set(libname uast)

# Source files
set(libsrc
  ${CMAKE_SOURCE_DIR}/src/uast.c
  ${CMAKE_SOURCE_DIR}/src/roles.c)

# Header files
set(libinclude
  ${CMAKE_SOURCE_DIR}/src/uast.h
  ${CMAKE_SOURCE_DIR}/src/roles.h
  ${CMAKE_SOURCE_DIR}/src/node_iface.h
  ${CMAKE_SOURCE_DIR}/src/nodes.h)

# Dependencies
set(libdep ${LIBXML2_LIBRARIES})
link_directories(${OUTPUT_PATH})

# Include headers
include_directories(
  ${LIBXML2_INCLUDE_DIR}
  ${CMAKE_SOURCE_DIR})

# Compile objects (then used by .a and .so)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
add_library(objlib OBJECT ${libsrc})

# Link static library
set(libstatic "${libname}-static")
add_library(${libstatic} STATIC $<TARGET_OBJECTS:objlib>)
target_link_libraries(${libstatic} ${libdep})
set_target_properties(${libstatic} PROPERTIES
  PUBLIC_HEADER "${libinclude}"
  OUTPUT_NAME ${libname}
  ARCHIVE_OUTPUT_DIRECTORY ${OUTPUT_PATH}
  LIBRARY_OUTPUT_DIRECTORY ${OUTPUT_PATH}
  RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_PATH})

# Link shared library
set(libshared "${libname}-shared")
add_library(${libshared} SHARED $<TARGET_OBJECTS:objlib>)
target_link_libraries(${libshared} ${libdep})
set_target_properties(${libshared} PROPERTIES
  OUTPUT_NAME ${libname}
  VERSION ${PROJECT_VERSION}
  SOVERSION ${PROJECT_VERSION_MAJOR}
  ARCHIVE_OUTPUT_DIRECTORY ${OUTPUT_PATH}
  LIBRARY_OUTPUT_DIRECTORY ${OUTPUT_PATH}
  RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_PATH})

# Install libraries
install(
  TARGETS       ${libstatic} ${libshared}
  ARCHIVE       DESTINATION lib
  LIBRARY       DESTINATION lib
  PUBLIC_HEADER DESTINATION include/libuast
)

# Adds examples
add_subdirectory(examples)

# Add tests
enable_testing()
add_subdirectory(tests)
