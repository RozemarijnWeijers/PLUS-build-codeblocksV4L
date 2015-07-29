# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkViewsInfovis-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkViewsInfovis-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkViewsInfovis-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Views/Infovis/CMakeFiles/vtkViewsInfovis.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkApplyColors.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkApplyIcons.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkDendrogramItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkGraphItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkGraphLayoutView.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkHeatmapItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkHierarchicalGraphPipeline.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkHierarchicalGraphView.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkIcicleView.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkInteractorStyleAreaSelectHover.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkInteractorStyleTreeMapHover.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkParallelCoordinatesHistogramRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkParallelCoordinatesRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkParallelCoordinatesView.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkRenderedGraphRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkRenderedHierarchyRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkRenderedRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkRenderedSurfaceRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkRenderedTreeAreaRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkRenderView.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkSCurveSpline.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkTanglegramItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkTreeAreaView.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkTreeHeatmapItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkTreeMapView.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkTreeRingView.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Views/Infovis/vtkViewUpdater.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Views/Infovis/vtkViewsInfovisModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

