# Install script for directory: /home/snr/Support/Plus-build-codeblocks/PlusLib/src

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

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/Utilities/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/PlusCommon/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/PlusOpenIGTLink/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/ImageProcessingAlgo/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/UsSimulatorAlgo/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/VolumeReconstruction/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/DataCollection/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/CalibrationAlgo/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/PlusServer/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/scripts/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

