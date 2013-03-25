MACRO (MSVC_CRT_SECURE_NO_WARNINGS)
    IF (MSVC)
        FOREACH (target ${ARGN})
            SET_TARGET_PROPERTIES (${target} PROPERTIES
                COMPILE_DEFINITIONS _CRT_SECURE_NO_WARNINGS
            )
        ENDFOREACH (target)
    ENDIF (MSVC)
ENDMACRO (MSVC_CRT_SECURE_NO_WARNINGS)

MACRO (MSVC_SET_WARNING_LEVEL level)
    IF (MSVC)
    IF(CMAKE_C_FLAGS MATCHES "/W[0-4]")
        STRING(REGEX REPLACE "/W[0-4]" "/W${level}" CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
    ELSE()
        SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /W${level}")
    ENDIF()
    ENDIF(MSVC)
ENDMACRO (MSVC_SET_WARNING_LEVEL)

SET(MSVC_FOUND 1)
