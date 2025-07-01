set(PCK "glog")

if (${PCK}_FOUND)
  return()
endif()

find_path(${PCK}_INCLUDE_DIR
  NAMES logging.h
  HINTS
    ${PRAGMA_DEPS_DIR}/glog/include
)

find_library(${PCK}_LIBRARY
  NAMES glog
  HINTS
    ${PRAGMA_DEPS_DIR}/glog/lib
)

find_file(
  ${PCK}_RUNTIME
  NAMES glog.dll
  HINTS ${PRAGMA_DEPS_DIR}/glog/bin
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(${PCK}
  REQUIRED_VARS ${PCK}_LIBRARY ${PCK}_RUNTIME ${PCK}_INCLUDE_DIR
)

if(${PCK}_FOUND)
  set(${PCK}_LIBRARIES   ${${PCK}_LIBRARY})
  set(${PCK}_INCLUDE_DIRS ${${PCK}_INCLUDE_DIR})
endif()
