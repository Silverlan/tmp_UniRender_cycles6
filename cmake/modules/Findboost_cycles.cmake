set(PCK "boost_cycles")

if (${PCK}_FOUND)
  return()
endif()

find_path(${PCK}_INCLUDE_DIR
  NAMES boost/config.hpp
  HINTS
    ${PRAGMA_DEPS_DIR}/boost_cycles/include
)

set(boost_cycles_libs
	boost_filesystem
	boost_regex
	boost_system
	boost_thread
	boost_date_time
	boost_wave
	boost_chrono
	boost_atomic
	boost_serialization
)

set(boost_cycles_lib_list)
foreach(LIB IN LISTS boost_cycles_libs)
  find_library(boost_cycles_${LIB}
    NAMES ${LIB}
    HINTS ${PRAGMA_DEPS_DIR}/boost_cycles/lib
  )
  list(APPEND boost_cycles_lib_list boost_cycles_${LIB})
endforeach()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(${PCK}
  REQUIRED_VARS ${boost_cycles_lib_list} ${PCK}_INCLUDE_DIR
)

set(boost_cycles_lib_paths)
foreach(LIB IN LISTS boost_cycles_lib_list)
  list(APPEND boost_cycles_lib_paths ${${LIB}})
endforeach()

if (boost_cycles_FOUND)
  set(${PCK}_LIBRARIES   ${boost_cycles_lib_paths})
  set(${PCK}_INCLUDE_DIRS ${${PCK}_INCLUDE_DIR})
endif()
