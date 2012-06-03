if (MSVC)
    set(MSVC_FOUND 1)

    macro (MSVC_CRT_SECURE_NO_WARNINGS TARGET)
        if (MSVC)
            set_target_properties(${TARGET} PROPERTIES
                COMPILE_DEFINITIONS _CRT_SECURE_NO_WARNINGS
            )
        endif (MSVC)
    endmacro (MSVC_CRT_SECURE_NO_WARNINGS)

endif (MSVC)
