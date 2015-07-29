# Install script for directory: /home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/igtl" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_header.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_image.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_position.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_transform.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_types.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_util.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_capability.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_win32header.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlMessageHandler.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlMessageHandlerMacro.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlClientSocket.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlConditionVariable.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlCreateObjectFunction.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlFastMutexLock.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlImageMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlImageMessage2.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlLightObject.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlMacro.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlMath.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlMessageBase.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlMessageHeader.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlMultiThreader.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlMutexLock.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlObjectFactory.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlOSUtil.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlObject.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlObjectFactoryBase.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlPositionMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlServerSocket.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlSessionManager.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlSimpleFastMutexLock.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlSmartPointer.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlSocket.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlStatusMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlTimeStamp.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlTransformMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlTypes.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlWin32Header.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlWindows.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_colortable.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_imgmeta.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_lbmeta.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_point.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_tdata.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_qtdata.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_trajectory.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_unit.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_sensor.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_string.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_ndarray.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_bind.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_qtrans.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlutil/igtl_polydata.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlColorTableMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlCapabilityMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlImageMetaMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlLabelMetaMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlPointMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlTrackingDataMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlPolyDataMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlQuaternionTrackingDataMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlTrajectoryMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlStringMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlUnit.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlSensorMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlBindMessage.h"
    "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink/Source/igtlNDArrayMessage.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/igtl/libOpenIGTLink.so.1.10.10"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/igtl/libOpenIGTLink.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/igtl/libOpenIGTLink.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/igtl" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libOpenIGTLink.so.1.10.10"
    "/home/snr/Support/Plus-build-codeblocks/bin/libOpenIGTLink.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libOpenIGTLink.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/igtl/libOpenIGTLink.so.1.10.10"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/igtl/libOpenIGTLink.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/igtl/libOpenIGTLink.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/OpenIGTLink-bin/Source/igtlutil/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

