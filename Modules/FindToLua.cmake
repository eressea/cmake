FIND_PATH(TOLUA_INCLUDE_DIR tolua.h
  HINTS
  $ENV{TOLUA_DIR}
  PATH_SUFFIXES include/tolua tolua include
  PATHS
  ~/Library/Frameworks
  /Library/Frameworks
  /usr/local
  /usr
  /sw # Fink
  /opt/local # DarwinPorts
  /opt/csw # Blastwave
  /opt
)

FIND_LIBRARY(TOLUA_LIBRARY
  NAMES tolua
  HINTS
  $ENV{TOLUA_DIR}
  PATH_SUFFIXES lib64 lib
  PATHS
  ~/Library/Frameworks
  /Library/Frameworks
  /usr/local
  /usr
  /sw
  /opt/local
  /opt/csw
  /opt
)

IF(TOLUA_LIBRARY)
  SET( TOLUA_LIBRARIES "${TOLUA_LIBRARY}" CACHE STRING "tolua Libraries")
ENDIF(TOLUA_LIBRARY)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(ToLua DEFAULT_MSG TOLUA_LIBRARIES TOLUA_INCLUDE_DIR)

MARK_AS_ADVANCED(TOLUA_INCLUDE_DIR TOLUA_LIBRARIES TOLUA_LIBRARY)
