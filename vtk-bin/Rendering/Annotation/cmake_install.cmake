# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkRenderingAnnotation-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkRenderingAnnotation-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingAnnotation-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/Annotation/CMakeFiles/vtkRenderingAnnotation.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkScalarBarActorInternal.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkAnnotatedCubeActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkArcPlotter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkAxesActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkAxisActor2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkAxisActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkAxisFollower.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkBarChartActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkCaptionActor2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkConvexHull2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkCornerAnnotation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkCubeAxesActor2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkCubeAxesActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkGraphAnnotationLayersFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkLeaderActor2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkLegendBoxActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkLegendScaleActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkPieChartActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkPolarAxesActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkProp3DAxisFollower.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkScalarBarActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkSpiderPlotActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Annotation/vtkXYPlotActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/Annotation/vtkRenderingAnnotationModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

