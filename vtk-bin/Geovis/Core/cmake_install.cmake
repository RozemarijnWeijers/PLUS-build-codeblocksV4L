# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkGeovisCore-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkGeovisCore-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkGeovisCore-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkGeovisCore-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkGeovisCore-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkGeovisCore-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Geovis/Core/CMakeFiles/vtkGeovisCore.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkCompassRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkCompassWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoAdaptiveArcs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoAlignedImageSource.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoArcs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoAssignCoordinates.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoCamera.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoFileImageSource.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoFileTerrainSource.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoGlobeSource.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoGraticule.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoImageNode.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoInteractorStyle.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoProjection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoProjectionSource.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoRandomGraphSource.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoSampleArcs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoSource.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoSphereTransform.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoTerrain.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoTerrain2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoTerrainNode.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoTransform.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoTreeNode.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoTreeNodeCache.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGlobeSource.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Geovis/Core/vtkGeoAlignedImageRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Geovis/Core/vtkGeovisCoreModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

