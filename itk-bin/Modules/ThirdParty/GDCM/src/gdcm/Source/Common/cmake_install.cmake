# Install script for directory: /home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common

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
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Libraries")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.7.so.1" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.7.so.1")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.7.so.1"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkgdcmCommon-4.7.so.1")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.7.so.1" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.7.so.1")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.7.so.1")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Libraries")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.7.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.7.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.7.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkgdcmCommon-4.7.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.7.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.7.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkgdcmCommon-4.7.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Headers")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmCommand.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmLegacyMacro.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTerminal.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmASN1.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmString.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/zipstreamimpl.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmObject.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmVersion.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmBase64.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSystem.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmDummyValueGenerator.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSwapper.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSHA1.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmStaticAssert.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSubject.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmFilenameGenerator.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmMD5.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmDirectory.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmDeflateStream.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTrace.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmProgressEvent.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmFilename.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmWin32.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTypes.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmByteSwap.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSmartPointer.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmCryptographicMessageSyntax.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSwapCode.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmException.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTesting.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmEvent.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmUnpacker12Bits.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmTestDriver.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmByteSwap.txx"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmSwapper.txx"
    "/home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/ThirdParty/GDCM/src/gdcm/Source/Common/gdcmConfigure.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Headers")

