# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/IO/Image

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
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkIOImage-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkIOImage-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOImage-6.2.so"
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
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Image/CMakeFiles/vtkIOImage.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkBMPReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkBMPWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkDEMReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkDICOMImageReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkGESignaReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkImageExport.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkImageImport.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkImageImportExecutive.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkImageReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkImageReader2.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkImageReader2Collection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkImageReader2Factory.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkImageWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkJPEGReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkJPEGWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkJSONImageWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkMedicalImageProperties.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkMedicalImageReader2.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkMetaImageReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkMetaImageWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkNIFTIImageHeader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkNIFTIImageReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkNIFTIImageWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkNrrdReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkPNGReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkPNGWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkPNMReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkPNMWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkPostScriptWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkSLCReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkTIFFReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkTIFFWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkVolume16Reader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Image/vtkVolumeReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Image/vtkIOImageModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

