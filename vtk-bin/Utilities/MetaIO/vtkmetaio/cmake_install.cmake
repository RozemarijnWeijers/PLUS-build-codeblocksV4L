# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkmetaio-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkmetaio-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkmetaio-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2/vtkmetaio" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaMesh.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaImage.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaTube.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaImageUtils.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaLandmark.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaImageTypes.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaUtils.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaCommand.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaEllipse.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaTransform.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaOutput.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaContour.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaGaussian.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaFEMObject.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaBlob.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaDTITube.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaTypes.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/localMetaConfiguration.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaArray.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaScene.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaGroup.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaSurface.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaTubeGraph.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaITKUtils.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaForm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaObject.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaEvent.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaArrow.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaVesselTube.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Utilities/MetaIO/vtkmetaio/metaLine.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Utilities/MetaIO/vtkmetaio/metaIOConfig.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

