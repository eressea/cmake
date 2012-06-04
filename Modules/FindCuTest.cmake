FIND_PATH(CUTEST_INCLUDE_DIR CuTest.h
  HINTS
  $ENV{CUTEST_DIR}
  PATH_SUFFIXES include/cutest cutest include
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

FIND_LIBRARY(CUTEST_LIBRARY 
  NAMES CuTest cutest
  HINTS
  $ENV{CUTEST_DIR}
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

IF(CUTEST_LIBRARY)
  SET( CUTEST_LIBRARIES "${CUTEST_LIBRARY}" CACHE STRING "CuTest Libraries")
ENDIF(CUTEST_LIBRARY)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(CuTest DEFAULT_MSG CUTEST_LIBRARIES CUTEST_INCLUDE_DIR)

MARK_AS_ADVANCED(CUTEST_INCLUDE_DIR CUTEST_LIBRARIES CUTEST_LIBRARY)
