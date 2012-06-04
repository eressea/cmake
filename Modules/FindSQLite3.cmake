FIND_PATH(SQLITE3_INCLUDE_DIR sqlite3.h
  HINTS
  $ENV{SQLITE3_DIR}
  PATH_SUFFIXES include/sqlite3 sqlite3 include
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

FIND_LIBRARY(SQLITE3_LIBRARY
  NAMES sqlite3
  HINTS
  $ENV{SQLITE3_DIR}
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

IF(SQLITE3_LIBRARY)
  SET( SQLITE3_LIBRARIES "${SQLITE3_LIBRARY}" CACHE STRING "SQLite3 Libraries")
ENDIF(SQLITE3_LIBRARY)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(SQLite3 DEFAULT_MSG SQLITE3_LIBRARIES SQLITE3_INCLUDE_DIR)

MARK_AS_ADVANCED(SQLITE3_INCLUDE_DIR SQLITE3_LIBRARIES SQLITE3_LIBRARY)
