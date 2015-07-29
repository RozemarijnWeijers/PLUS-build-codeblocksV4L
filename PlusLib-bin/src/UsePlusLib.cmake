#
# This module is provided as PLUSLIB_USE_FILE 
# It can be INCLUDEd in a project to load the needed compiler and linker
# settings to use Plus library.
#

IF(NOT PLUSLIB_USE_FILE_INCLUDED)
  SET(PLUSLIB_USE_FILE_INCLUDED 1)
  
  CMAKE_POLICY(PUSH)
  CMAKE_POLICY(SET CMP0012 NEW) # if() recognizes numbers and boolean constants
  
  ## Set Plus binary dir path 
  SET(PLUSLIB_DIR "/home/snr/Support/Plus-build-codeblocks/PlusLib-bin" )
  
  ## Set Plus source dir path 
  SET(PLUSLIB_SOURCE_DIR "/home/snr/Support/Plus-build-codeblocks/PlusLib" )
  
  ## Set Plus executable output path 
  SET(PLUS_EXECUTABLE_OUTPUT_PATH "/home/snr/Support/Plus-build-codeblocks/bin" )
    
  ## Set Plus scripts folder path 
  SET(PLUSLIB_SCRIPTS_DIR "/home/snr/Support/Plus-build-codeblocks/PlusLib/src/scripts" )
    
  ## Set Sikuli binary dir path 
  SET(SIKULI_BIN_DIR "/home/snr/Support/Plus-build-codeblocks/PlusLib/tools/Sikuli" )

  ## Find ITK 
  FIND_PACKAGE(ITK PATHS "/home/snr/Support/Plus-build-codeblocks/itk-bin" NO_DEFAULT_PATH)
  IF (ITK_FOUND)
    INCLUDE("/home/snr/Support/Plus-build-codeblocks/itk/CMake/UseITK.cmake")
  ELSE (ITK_FOUND)
    MESSAGE(FATAL_ERROR "Please set ITK.")
  ENDIF (ITK_FOUND)

  ## Find VTK 
  FIND_PACKAGE(VTK PATHS "/home/snr/Support/Plus-build-codeblocks/vtk-bin" NO_DEFAULT_PATH)
  IF (VTK_FOUND)
    INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk/CMake/UseVTK.cmake")
  ELSE (VTK_FOUND)
    MESSAGE(FATAL_ERROR "Please set VTK.")
  ENDIF (VTK_FOUND)
  
  SET(PLUS_USE_OpenIGTLink ON)
  IF(PLUS_USE_OpenIGTLink)
    FIND_PACKAGE(OpenIGTLink PATHS "/home/snr/Support/Plus-build-codeblocks/OpenIGTLink-bin" NO_DEFAULT_PATH)
    IF (OpenIGTLink_USE_FILE)
      INCLUDE ("/home/snr/Support/Plus-build-codeblocks/OpenIGTLink-bin/UseOpenIGTLink.cmake")
    ELSE (OpenIGTLink_USE_FILE)
      MESSAGE( FATAL_ERROR "Please set OpenIGTLink.")
    ENDIF (OpenIGTLink_USE_FILE)
  ENDIF(PLUS_USE_OpenIGTLink) 
  
  SET(PLUS_USE_SLICER OFF)
  IF(PLUS_USE_SLICER)
    SET(SLICER_BIN_DIRECTORY "")
  ENDIF(PLUS_USE_SLICER)

  # Add include directories needed to use PlusLib library 
  # Use a temporary CMake variable to store the list of directory paths
  # (it is required because this way directory names
  # that do not contain space and those that do contain space
  # work equally well).
  SET(PLUSLIB_INCLUDE_DIRS_TEMP "/home/snr/Support/Plus-build-codeblocks/PlusLib/src;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/Utilities/Ransac;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/Utilities/xio;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/PlusCommon;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/PlusCommon;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/PlusOpenIGTLink;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/PlusOpenIGTLink;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/ImageProcessingAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/ImageProcessingAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/UsSimulatorAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/UsSimulatorAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/VolumeReconstruction;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/VolumeReconstruction;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/DataCollection;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/FakeTracking;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/ImageProcessor;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/SavedDataSource;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/UsSimulatorVideo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/VirtualDevices;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/ChRobotics;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/MicrochipTracking;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/OpenIGTLink;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/CalibrationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/PatternLocAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkBrachyStepperPhantomRegistrationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkCenterOfRotationCalibAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkLineSegmentationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkPhantomLandmarkRegistrationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkPhantomLinearObjectRegistrationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkPivotCalibrationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkProbeCalibrationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkSpacingCalibAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkTemporalCalibrationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkLandmarkDetectionAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/PlusServer;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/PlusServer")
  INCLUDE_DIRECTORIES(${PLUSLIB_INCLUDE_DIRS_TEMP})
  
  # Add link directories needed to use Plus library
  # Use a temporary CMake variable to store the list of directory paths
  # (it is required because this way directory names
  # that do not contain space and those that do contain space
  # work equally well).
  SET(PLUSLIB_LIBRARY_DIRS_TEMP "/home/snr/Support/Plus-build-codeblocks/bin")
  LINK_DIRECTORIES(${PLUSLIB_LIBRARY_DIRS_TEMP})
  
  SET(PLUSLIB_BUILD_SHARED_LIBS ON)
  
  SET(QT_QMAKE_EXECUTABLE "/usr/bin/qmake-qt4")
  
  ## Find SVN 
  SET (SVN_FOUND TRUE)
  IF ( SVN_FOUND )
    SET( Subversion_SVN_EXECUTABLE "/usr/bin/svn" CACHE INTERNAL "")
  ENDIF (SVN_FOUND)
  
  ## Set Plus version 
  SET(PLUSLIB_VERSION "2.3.0")
  SET(PLUSLIB_VERSION_MAJOR 2)
  SET(PLUSLIB_VERSION_MINOR 3)
  SET(PLUSLIB_VERSION_PATCH 0)
  SET(PLUSLIB_PLATFORM Linux/Mac)
  SET(PLUSLIB_REVISION 4221)

  SET(PLUS_ULTRASONIX_SDK_MAJOR_VERSION )
  SET(PLUS_ULTRASONIX_SDK_MINOR_VERSION )
  SET(PLUS_ULTRASONIX_SDK_PATCH_VERSION )
  
  ## Set third party lib path variables
  SET(ICCAPTURING_BIN_DIR "")
  SET(NDIOAPI_BINARY_DIR "")
  SET(ULTRASONIX_SDK_BINARY_DIR "")
  SET(ATC_TRAKSTAR_BINARY_DIR "/home/snr/Support/Plus-build-codeblocks/PlusLib/tools/Ascension/trakSTAR_940038_RevD/bin")
  SET(USDIGITAL_SEI_BINARY_DIR "/home/snr/Support/Plus-build-codeblocks/PlusLib/tools/UsDigital/SEI_5.22/bin")
  
  ## Set Plus use variables
  
  SET(PLUS_USE_3dConnexion_TRACKER OFF)
  SET(PLUS_USE_Ascension3DG OFF)
  SET(PLUS_USE_Ascension3DGm OFF)
  SET(PLUS_USE_BKPROFOCUS_CAMERALINK )
  SET(PLUS_USE_BKPROFOCUS_VIDEO OFF)
  SET(PLUS_TEST_BKPROFOCUS OFF)
  SET(PLUS_USE_BRACHY_TRACKER OFF)
  SET(PLUS_USE_CERTUS OFF)
  SET(PLUS_USE_EPIPHAN OFF)
  SET(PLUS_USE_ICCAPTURING_VIDEO OFF)
  SET(PLUS_USE_CAPISTRANO_VIDEO OFF)
  SET(PLUS_USE_INTERSON_VIDEO OFF)
  SET(PLUS_USE_INTERSONSDKCXX_VIDEO OFF)
  SET(PLUS_USE_MICRONTRACKER OFF)
  SET(PLUS_USE_MMF_VIDEO OFF)
  SET(PLUS_USE_PHIDGET_SPATIAL_TRACKER OFF)
  SET(PLUS_USE_POLARIS OFF)
  SET(PLUS_USE_TELEMED_VIDEO OFF)
  SET(PLUS_USE_ULTRASONIX_VIDEO OFF)  
  SET(PLUS_USE_VFW_VIDEO OFF)
  SET(PLUS_USE_STEALTHLINK OFF)
  SET(PLUS_USE_THORLABS_VIDEO OFF)
  SET(PLUS_USE_IntuitiveDaVinci OFF)
  SET(PLUS_USE_PHILIPS_3D_ULTRASOUND OFF)

  SET(PLUSLIB_DEPENDENCIES vtkxio;vtkPlusCommon;vtkPlusOpenIGTLink;vtkImageProcessingAlgo;vtkUsSimulatorAlgo;vtkVolumeReconstruction;vtkDataCollection;vtkCalibrationAlgo;vtkPlusServer )

  macro(INCLUDE_PLUSLIB_MS_PROJECTS)
    IF ( ${CMAKE_GENERATOR} MATCHES "Visual Studio 9" )
      INCLUDE_EXTERNAL_MSPROJECT(vtkPlusCommon;"/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/PlusCommon/vtkPlusCommon.vcproj")
      INCLUDE_EXTERNAL_MSPROJECT(vtkUsSimulatorAlgo;"/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/UsSimulatorAlgo/vtkUsSimulatorAlgo.vcproj";vtkPlusCommon)                  
      INCLUDE_EXTERNAL_MSPROJECT(vtkImageProcessingAlgo;"/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/ImageProcessingAlgo/vtkImageProcessingAlgo.vcproj";vtkPlusCommon)
      INCLUDE_EXTERNAL_MSPROJECT(vtkDataCollection;"/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/DataCollection/vtkDataCollection.vcproj";vtkPlusCommon;vtkUsSimulatorAlgo;vtkImageProcessingAlgo)
      INCLUDE_EXTERNAL_MSPROJECT(vtkCalibrationAlgo;"/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/CalibrationAlgo/vtkCalibrationAlgo.vcproj";vtkPlusCommon)
      INCLUDE_EXTERNAL_MSPROJECT(vtkVolumeReconstruction;"/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/VolumeReconstruction/vtkVolumeReconstruction.vcproj";vtkPlusCommon;vtkDataCollection)
      INCLUDE_EXTERNAL_MSPROJECT(vtkxio;"/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/Utilities/xio/vtkxio.vcproj")
      IF (OFF)
        INCLUDE_EXTERNAL_MSPROJECT(vtkndicapi;"/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/Utilities/ndicapi/vtkndicapi.vcproj")
      ENDIF()
      IF (OFF)
        INCLUDE_EXTERNAL_MSPROJECT()
      ENDIF()
      IF (ON)
        INCLUDE_EXTERNAL_MSPROJECT(vtkPlusOpenIGTLink;"/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/PlusOpenIGTLink/vtkPlusOpenIGTLink.vcproj";vtkPlusCommon)
      ENDIF()
    IF (OFF)
        INCLUDE_EXTERNAL_MSPROJECT()
      ENDIF()
    ENDIF ()
  endmacro()

  SET(DOXYGEN_EXECUTABLE "")
  SET(DOXYGEN_DOT_EXECUTABLE "")
  SET(DOXYGEN_HHC_EXECUTABLE "")
  SET(PLUSLIB_DOCUMENTATION_TARGET_IN_ALL )
  SET(PLUSLIB_BUILD_DOCUMENTATION OFF)

  
  CMAKE_POLICY(POP)
  
ENDIF(NOT PLUSLIB_USE_FILE_INCLUDED)
