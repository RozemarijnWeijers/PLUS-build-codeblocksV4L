# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkRenderingOpenGL-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkRenderingOpenGL-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingOpenGL-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/CMakeFiles/vtkRenderingOpenGL.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkgluPickMatrix.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGL.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkTDxConfigure.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkRenderingOpenGLConfigure.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkgl.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkOpenGLError.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkCameraPass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkChooserPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkClearRGBPass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkClearZPass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkClipPlanesPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkCoincidentTopologyResolutionPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkColorMaterialHelper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkCompositePainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkCompositePolyDataMapper2.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkDataTransferHelper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkDefaultPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkDefaultPass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkDepthPeelingPass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkDisplayListPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkFrameBufferObject.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkFrameBufferObject2.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkGLSLShaderDeviceAdapter2.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkGaussianBlurPass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkGenericOpenGLRenderWindow.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkHardwareSelectionPolyDataPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkImageProcessingPass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkLightingHelper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkLightingPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkLightsPass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkLinesPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpaquePass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLActor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLCamera.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLClipPlanesPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLCoincidentTopologyResolutionPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLCompositePainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLDisplayListPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLExtensionManager.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLGL2PSHelper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLGlyph3DMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLHardwareSelector.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLHardwareSupport.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLImageMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLImageSliceMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLLabeledContourMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLLight.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLLightMonitor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLLightingPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLModelViewProjectionMonitor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLPainterDeviceAdapter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLPolyDataMapper2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLProperty.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLRenderWindow.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLRenderer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLRepresentationPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLScalarsToColorsPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLState.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLTexture.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOverlayPass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkPainterPolyDataMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkPixelBufferObject.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkPointsPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkPolyDataPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkPolygonsPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkPrimitivePainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkRenderPass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkRenderPassCollection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkRenderState.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkRenderbuffer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkRepresentationPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkScalarsToColorsPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkSequencePass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkShader2.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkShader2Collection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkShaderProgram2.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkShadowMapBakerPass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkShadowMapPass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkSobelGradientMagnitudePass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkStandardPolyDataPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkTStripsPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkTextureObject.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkTextureUnitManager.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkTranslucentPass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkUniformVariables.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkValuePainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkValuePass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkValuePasses.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkVolumetricPass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkRenderingOpenGLObjectFactory.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLPolyDataMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkColorMaterialHelper_vs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkDepthPeeling_fs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkGaussianBlurPassShader_fs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkLighting_s.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkLightingHelper_s.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkOpenGLRenderer_PeelingFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkOpenGLPropertyDefaultPropFunc_fs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkOpenGLPropertyDefaultPropFunc_vs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkOpenGLPropertyDefaultMain_fs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkOpenGLPropertyDefaultMain_vs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkSobelGradientMagnitudePassShader1_fs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkSobelGradientMagnitudePassShader2_fs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkShadowMapPassShader_fs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkShadowMapPassShader_vs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkXRenderWindowInteractor.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkXOpenGLRenderWindow.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkXGPUInfoList.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/vtkRenderingOpenGLModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

