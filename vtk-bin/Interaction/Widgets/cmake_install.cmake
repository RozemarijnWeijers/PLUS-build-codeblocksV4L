# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkInteractionWidgets-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkInteractionWidgets-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkInteractionWidgets-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Interaction/Widgets/CMakeFiles/vtkInteractionWidgets.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtk3DWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkAbstractPolygonalHandleRepresentation3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkAbstractWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkAffineRepresentation2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkAffineRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkAffineWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkAngleRepresentation2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkAngleRepresentation3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkAngleRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkAngleWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkAxesTransformRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkAxesTransformWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkBalloonRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkBalloonWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkBezierContourLineInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkBiDimensionalRepresentation2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkBiDimensionalRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkBiDimensionalWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkBorderRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkBorderWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkBoundedPlanePointPlacer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkBoxRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkBoxWidget2.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkBoxWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkBrokenLineWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkButtonRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkButtonWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkCameraRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkCameraWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkCaptionRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkCaptionWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkCellCentersPointPlacer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkCenteredSliderRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkCenteredSliderWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkCheckerboardRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkCheckerboardWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkClosedSurfacePointPlacer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkConstrainedPointHandleRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkContinuousValueWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkContinuousValueWidgetRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkContourLineInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkContourRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkContourWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkDijkstraImageContourLineInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkDistanceRepresentation2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkDistanceRepresentation3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkDistanceRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkDistanceWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkEllipsoidTensorProbeRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkEvent.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkFixedSizeHandleRepresentation3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkFocalPlaneContourRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkFocalPlanePointPlacer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkHandleRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkHandleWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkHoverWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkImageActorPointPlacer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkImageCroppingRegionsWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkImageOrthoPlanes.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkImagePlaneWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkImageTracerWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkImplicitPlaneRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkImplicitPlaneWidget2.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkImplicitPlaneWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkLinearContourLineInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkLineRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkLineWidget2.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkLineWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkLogoRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkLogoWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkOrientationMarkerWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkOrientedGlyphContourRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkOrientedGlyphFocalPlaneContourRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkOrientedPolygonalHandleRepresentation3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkParallelopipedRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkParallelopipedWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkPlaneWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkPlaybackRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkPlaybackWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkPointHandleRepresentation2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkPointHandleRepresentation3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkPointPlacer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkPointWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkPolyDataContourLineInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkPolyDataPointPlacer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkPolyDataSourceWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkPolygonalHandleRepresentation3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkPolygonalSurfaceContourLineInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkPolygonalSurfacePointPlacer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkProp3DButtonRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkRectilinearWipeRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkRectilinearWipeWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkScalarBarRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkScalarBarWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkSeedRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkSeedWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkSliderRepresentation2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkSliderRepresentation3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkSliderRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkSliderWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkSphereHandleRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkSphereRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkSphereWidget2.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkSphereWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkSplineRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkSplineWidget2.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkSplineWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkTensorProbeRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkTensorProbeWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkTerrainContourLineInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkTerrainDataPointPlacer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkTextRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkTexturedButtonRepresentation2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkTexturedButtonRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkTextWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkWidgetCallbackMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkWidgetEvent.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkWidgetEventTranslator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkWidgetRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkWidgetSet.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkXYPlotWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkResliceCursorLineRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkResliceCursorRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkResliceCursorThickLineRepresentation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkResliceCursorWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkResliceCursorActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkResliceCursorPicker.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkResliceCursor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Interaction/Widgets/vtkResliceCursorPolyDataAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Interaction/Widgets/vtkInteractionWidgetsModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

