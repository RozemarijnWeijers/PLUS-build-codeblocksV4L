# - Config file for the Plus package
# It defines the following variables
#  PLUSLIB_INCLUDE_DIRS - include directories for Plus
#  PLUSLIB_LIBRARY_DIRS - library directories for Plus (normally not used!)
 
# Tell the user project where to find our headers and libraries
SET(PLUSLIB_INCLUDE_DIRS "/home/snr/Support/Plus-build-codeblocks/PlusLib/src;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/Utilities/Ransac;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/Utilities/xio;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/PlusCommon;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/PlusCommon;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/PlusOpenIGTLink;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/PlusOpenIGTLink;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/ImageProcessingAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/ImageProcessingAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/UsSimulatorAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/UsSimulatorAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/VolumeReconstruction;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/VolumeReconstruction;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/DataCollection;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/FakeTracking;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/ImageProcessor;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/SavedDataSource;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/UsSimulatorVideo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/VirtualDevices;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/ChRobotics;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/MicrochipTracking;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/OpenIGTLink;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/CalibrationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/PatternLocAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkBrachyStepperPhantomRegistrationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkCenterOfRotationCalibAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkLineSegmentationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkPhantomLandmarkRegistrationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkPhantomLinearObjectRegistrationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkPivotCalibrationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkProbeCalibrationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkSpacingCalibAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkTemporalCalibrationAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/CalibrationAlgo/vtkLandmarkDetectionAlgo;/home/snr/Support/Plus-build-codeblocks/PlusLib/src/PlusServer;/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/PlusServer")
SET(PLUSLIB_LIBRARY_DIRS "/home/snr/Support/Plus-build-codeblocks/bin")
SET(PLUSLIB_DATA_DIR "/home/snr/Support/Plus-build-codeblocks/PlusLib/data")

# Tell the user project where to find Plus use file
SET(PlusLib_USE_FILE "/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/UsePlusLib.cmake" )

# Get the location for IntersonCxx
SET(PLUS_USE_INTERSONSDKCXX_VIDEO "OFF")
IF(PLUS_USE_INTERSONSDKCXX_VIDEO)
  IF(NOT DEFINED IntersonSDKCxx_DIR)
    SET(IntersonSDKCxx_DIR )
  ENDIF()
  FIND_PACKAGE(IntersonSDKCxx REQUIRED)
ENDIF()
 
# Our library dependencies (contains definitions for IMPORTED targets)
include("/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/PlusLibLibraryDepends.cmake")
