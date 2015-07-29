# Install script for directory: /home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cppheaders")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/itkhdf5/cpp" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5AbstractDs.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5Alltypes.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5ArrayType.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5AtomType.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5Attribute.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5Classes.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5CommonFG.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5CompType.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5Cpp.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5CppDoc.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5DataSet.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5DataSpace.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5DataType.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5DcreatProp.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5DxferProp.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5EnumType.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5Exception.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5FaccProp.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5FcreatProp.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5File.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5FloatType.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5Group.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5IdComponent.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5Include.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5IntType.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5Library.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5Object.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5PredType.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5PropList.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5StrType.h"
    "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/HDF5/src/itkhdf5/c++/src/H5VarLenType.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cppheaders")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "libraries")
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkhdf5_cpp-4.7.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkhdf5_cpp-4.7.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkhdf5_cpp-4.7.so.1"
    "/home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkhdf5_cpp-4.7.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkhdf5_cpp-4.7.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkhdf5_cpp-4.7.so"
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

