if(NOT DEFINED CMAKE_OSX_DEPLOYMENT_TARGET)
  message(SEND_ERROR "CMAKE_OSX_DEPLOYMENT_TARGET not defined")
endif()

if(NOT DEFINED SwiftCore_TARGET_VARIANT_DEPLOYMENT_TARGET)
  message(WARNING "SwiftCore_TARGET_VARIANT_DEPLOYMENT_TARGET not defined")
endif()

set(CMAKE_C_COMPILER_TARGET "x86_64-apple-macosx${CMAKE_OSX_DEPLOYMENT_TARGET}" CACHE STRING "")
set(CMAKE_CXX_COMPILER_TARGET "x86_64-apple-macosx${CMAKE_OSX_DEPLOYMENT_TARGET}" CACHE STRING "")
set(CMAKE_Swift_COMPILER_TARGET "x86_64-apple-macosx${CMAKE_OSX_DEPLOYMENT_TARGET}" CACHE STRING "")

set(SwiftCore_ARCH_SUBDIR x86_64 CACHE STRING "")
set(SwiftCore_PLATFORM_SUBDIR macosx CACHE STRING "")

set(SwiftCore_COMPILER_VARIANT_TARGET "x86_64-apple-ios${SwiftCore_TARGET_VARIANT_DEPLOYMENT_TARGET}-macabi" CACHE STRING "")

include("${CMAKE_CURRENT_LIST_DIR}/apple-common.cmake")
