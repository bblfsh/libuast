# - Try to find libuast
# Once done this will define
#  UAST_FOUND        - System has libuast
#  UAST_INCLUDE_DIRS - The libuast include directories
#  UAST_LIBRARIES    - The libraries needed to use libuast

find_package(PkgConfig QUIET)
pkg_check_modules(PC_UAST QUIET uast)

find_path(UAST_INCLUDE_DIR
  NAMES libuast.h libuast.hpp
  HINTS ../build/*
)
find_library(UAST_LIBRARY
  NAMES uast
  HINTS ../build/*
)

include(FindPackageHandleStandardArgs)
# handle the QUIETLY and REQUIRED arguments and set CUNIT_FOUND to TRUE
# if all listed variables are TRUE and the requested version matches.
find_package_handle_standard_args(Uast REQUIRED_VARS
                                  UAST_LIBRARY UAST_INCLUDE_DIR
                                  VERSION_VAR UAST_VERSION)

if(UAST_FOUND)
  set(UAST_LIBRARIES     ${UAST_LIBRARY})
  set(UAST_INCLUDE_DIRS  ${UAST_INCLUDE_DIR})
endif()

mark_as_advanced(UAST_INCLUDE_DIR UAST_LIBRARY)
