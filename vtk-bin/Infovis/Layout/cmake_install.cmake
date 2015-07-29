# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkInfovisLayout-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkInfovisLayout-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInfovisLayout-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Infovis/Layout/CMakeFiles/vtkInfovisLayout.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkArcParallelEdgeStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkAreaLayout.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkAreaLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkAssignCoordinates.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkAssignCoordinatesLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkAttributeClustering2DLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkBoxLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkCirclePackFrontChainLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkCirclePackLayout.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkCirclePackLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkCirclePackToPolyData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkCircularLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkClustering2DLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkCommunity2DLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkConeLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkConstrained2DLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkCosmicTreeLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkEdgeLayout.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkEdgeLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkFast2DLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkForceDirectedLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkGeoEdgeStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkGeoMath.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkGraphLayout.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkGraphLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkIncrementalForceLayout.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkPassThroughEdgeStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkPassThroughLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkPerturbCoincidentVertices.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkRandomLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkSimple2DLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkSimple3DCirclesStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkSliceAndDiceLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkSpanTreeLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkSplineGraphEdges.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkSquarifyLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkStackedTreeLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkTreeLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkTreeMapLayout.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkTreeMapLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkTreeMapToPolyData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkTreeOrbitLayoutStrategy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkTreeRingToPolyData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Infovis/Layout/vtkKCoreLayout.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Infovis/Layout/vtkInfovisLayoutModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

