# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkRenderingCore-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkRenderingCore-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingCore-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/Core/CMakeFiles/vtkRenderingCore.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkGPUInfoListArray.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkNoise200x200.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkPythagoreanQuadruples.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkRayCastStructures.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkRenderingCoreEnums.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTDxMotionEventInfo.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkAbstractMapper3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkAbstractMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkAbstractPicker.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkAbstractVolumeMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkActor2DCollection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkActor2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkActorCollection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkAssembly.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkBackgroundColorMonitor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkCameraActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkCamera.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkCameraInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkCellCenterDepthSort.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkColorTransferFunction.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkCompositeDataDisplayAttributes.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkCompositePolyDataMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkCoordinate.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkCullerCollection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkCuller.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkDataSetMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkDiscretizableColorTransferFunction.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkDistanceToCamera.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkFollower.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkFrustumCoverageCuller.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkGenericRenderWindowInteractor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkGenericVertexAttributeMapping.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkGlyph3DMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkGPUInfo.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkGPUInfoList.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkGraphicsFactory.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkGraphMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkGraphToGlyphs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkHardwareSelector.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkHierarchicalPolyDataMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkImageActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkImageMapper3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkImageMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkImageProperty.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkImageSlice.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkImageSliceMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkInteractorEventRecorder.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkInteractorObserver.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkLabeledContourMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkLightActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkLightCollection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkLight.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkLightKit.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkLogLookupTable.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkLookupTableWithEnabling.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkMapArrayValues.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkMapper2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkMapperCollection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkObserverMediator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkPolyDataMapper2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkPolyDataMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkProp3DCollection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkProp3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkProp3DFollower.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkPropAssembly.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkPropCollection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkProp.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkProperty2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkProperty.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkRendererCollection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkRenderer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkRendererDelegate.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkRendererSource.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkRenderWindowCollection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkRenderWindow.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkRenderWindowInteractor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkSelectVisiblePoints.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkShaderDeviceAdapter2.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTextActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTextActor3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTexture.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTexturedActor2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTransformCoordinateSystems.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTransformInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTupleInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkViewDependentErrorMetric.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkViewport.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkVisibilitySort.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkVolumeCollection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkVolume.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkVolumeProperty.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkWindowLevelLookupTable.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkWindowToImageFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkAssemblyNode.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkAssemblyPath.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkAssemblyPaths.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkAreaPicker.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkPicker.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkAbstractPropPicker.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkPropPicker.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkPickingManager.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkLODProp3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkWorldPointPicker.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkCellPicker.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkPointPicker.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkRenderedAreaPicker.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkScenePicker.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkInteractorStyle.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkInteractorStyleSwitchBase.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTDxInteractorStyle.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTDxInteractorStyleCamera.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTDxInteractorStyleSettings.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkStringToImage.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTextMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTextProperty.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTextPropertyCollection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkTextRenderer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkAbstractInteractionDevice.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkAbstractRenderDevice.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkRenderWidget.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Core/vtkPainterDeviceAdapter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/Core/vtkRenderingCoreModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

