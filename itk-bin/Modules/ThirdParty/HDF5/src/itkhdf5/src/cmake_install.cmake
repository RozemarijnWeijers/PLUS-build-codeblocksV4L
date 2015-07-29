# Install script for directory: /home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "headers")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/itkhdf5" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/hdf5.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5api_adpt.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5public.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5version.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5overflow.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Apkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Apublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5ACpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5ACpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5B2pkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5B2public.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Bpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Bpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Dpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Dpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Edefin.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Einit.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Epkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Epubgen.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Epublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Eterm.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Fpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Fpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDcore.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDdirect.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDfamily.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDlog.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDmpi.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDmpio.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDmpiposix.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDmulti.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDsec2.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDstdio.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FSpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FSpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Gpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Gpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HFpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HFpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HGpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HGpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HLpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HLpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MPpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Opkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Opublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Oshared.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Ppkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Ppublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Spkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Spublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5SMpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Tpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Tpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Zpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Zpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Cpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Cpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Ipkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Ipublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Lpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Lpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MMpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Rpkg.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Rpublic.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5private.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Aprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5ACprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5B2private.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Bprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5CSprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Dprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Eprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FDprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Fprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FLprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FOprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MFprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MMprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Cprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5FSprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Gprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HFprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HGprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HLprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5HPprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Iprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Lprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5MPprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Oprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Pprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5RCprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Rprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5RSprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5SLprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5SMprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Sprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5STprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Tprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5TSprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Vprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5WBprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5Zprivate.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/src/H5win32defs.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "headers")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libraries")
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkhdf5-4.7.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkhdf5-4.7.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkhdf5-4.7.so.1"
    "/home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkhdf5-4.7.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkhdf5-4.7.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkhdf5-4.7.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_REMOVE
           FILE "${file}")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libraries")

