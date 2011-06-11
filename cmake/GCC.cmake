# set compile flags for MSVC

option( SALVIA_ENABLE_CODE_COVERAGE_USE_GCOV "Enable code coverage test with GCOV." TRUE )

if( SALVIA_ENABLE_CODE_COVERAGE_USE_GCOV )
	set ( SALVIA_GCC_GCOV_PARAM "-fprofile-arcs -ftest-coverage")
endif()

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${SALVIA_GCC_GCOV_PARAM} -msse2 -std=c++98 -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS")
set(CMAKE_C_FLAGS ${CMAKE_CXX_FLAGS})

set(CMAKE_C_FLAGS_DEBUG ${CMAKE_CXX_FLAGS_DEBUG})
set(CMAKE_C_FLAGS_RELEASE ${CMAKE_CXX_FLAGS_RELEASE})
set(CMAKE_C_FLAGS_RELWITHDEBINFO ${CMAKE_CXX_FLAGS_RELWITHDEBINFO})
set(CMAKE_C_FLAGS_MINSIZEREL ${CMAKE_CXX_FLAGS_MINSIZEREL})

if (MINGW)
	set ( CMAKE_EXE_LINKER_FLAGS "-Wl,--enable-auto-import" )
endif(MINGW)
