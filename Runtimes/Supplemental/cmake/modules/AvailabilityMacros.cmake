file(STRINGS "${${PROJECT_NAME}_SWIFTC_SOURCE_DIR}/utils/availability-macros.def" availability_defs)
list(FILTER availability_defs EXCLUDE REGEX "^\\s*(#.*)?$")
foreach(def ${availability_defs})
  add_compile_options("$<$<COMPILE_LANGUAGE:Swift>:SHELL:-Xfrontend -define-availability -Xfrontend \"${def}\">")
endforeach()
