FUNCTION(HANDLE_LIBRARY_TYPES _name)
  # Additional libraries can be added as additional arguments
  IF(${_name}_LIBRARY_DEBUG AND ${_name}_LIBRARY_OPTIMIZED)
    SET(${_name}_LIBRARY
      optimized ${${_name}_LIBRARY_OPTIMIZED} ${ARGN}
      debug     ${${_name}_LIBRARY_DEBUG}     ${ARGN}
      PARENT_SCOPE
    )
  ELSE()
    SET(${_name}_LIBRARY
      ${${_name}_LIBRARY_OPTIMIZED} ${ARGN}
      PARENT_SCOPE
     )
  ENDIF()
ENDFUNCTION(HANDLE_LIBRARY_TYPES)
