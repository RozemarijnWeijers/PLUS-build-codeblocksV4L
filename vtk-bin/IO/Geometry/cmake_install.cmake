# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkIOGeometry-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkIOGeometry-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOGeometry-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Geometry/CMakeFiles/vtkIOGeometry.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkAVSucdReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkBYUReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkBYUWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkChacoReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkFacetWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkFLUENTReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkGAMBITReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkGaussianCubeReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkIVWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkMCubesReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkMCubesWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkMFIXReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkMoleculeReaderBase.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkMultiBlockPLOT3DReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkMultiBlockPLOT3DReaderInternals.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkOBJReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkOpenFOAMReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkParticleReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkPDBReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkPlot3DMetaReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkProStarReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkSTLReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkSTLWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkTecplotReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkUGFacetReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkWindBladeReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Geometry/vtkXYZMolReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Geometry/vtkIOGeometryModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

