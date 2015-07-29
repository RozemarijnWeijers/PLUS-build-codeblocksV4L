# Install script for directory: /home/snr/Support/Plus-build-codeblocks/PlusApp

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/snr/Support/Plus-build-codeblocks/PlusApp-bin/Install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE FILES
    "/usr/lib/x86_64-linux-gnu/qt4/bin/QtCore4.so"
    "/usr/lib/x86_64-linux-gnu/qt4/bin/QtGui4.so"
    "/usr/lib/x86_64-linux-gnu/qt4/bin/QtNetwork4.so"
    "/usr/lib/x86_64-linux-gnu/qt4/bin/QtSql4.so"
    "/usr/lib/x86_64-linux-gnu/qt4/bin/QtWebKit4.so"
    "/usr/lib/x86_64-linux-gnu/qt4/bin/QtXmlPatterns4.so"
    "/usr/lib/x86_64-linux-gnu/qt4/bin/phonon4.so"
    "/usr/lib/x86_64-linux-gnu/qt4/bin/QtOpenGL4.so"
    "/usr/lib/x86_64-linux-gnu/qt4/bin/QtXml4.so"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/config" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/PlusDeviceSet_fCal_Sim_PivotCalibration.xml"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/PlusDeviceSet_fCal_Sim_RecordPhantomLandmarks.xml"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/PlusDeviceSet_fCal_Sim_SpatialCalibration_2.0.xml"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/PlusDeviceSet_fCal_Sim_TemporalCalibration.xml"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/PlusDeviceSet_fCal_Sim_VolumeReconstruction.xml"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/PlusDeviceSet_Server_ChRobotics.xml"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/PlusDeviceSet_Server_Microchip.xml"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/PlusDeviceSet_Server_Sim_NwirePhantom.xml"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/PlusDeviceSet_Server_SimulatedUltrasound_3DSlicer.xml"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/SimulatedUltrasound_GelBlockModel_Reference.stl"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/SimulatedUltrasound_NeedleModel_NeedleTip.stl"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/SimulatedUltrasound_VesselModel_Reference.stl"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/SimulatedUltrasound_Scene.mrb"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/CADModels/fCalPhantom/fCal_1.0.stl"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/CADModels/fCalPhantom/fCal_1.2.stl"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/CADModels/fCalPhantom/fCal_2.0.stl"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/CADModels/fCalPhantom/fCal_3.1.stl"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/CADModels/fCalPhantom/fCal_L1.4.stl"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/CADModels/LinearProbe/Probe_L14-5_38.stl"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/CADModels/EndocavityProbe/Probe_EC9-5_10.stl"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/CADModels/CurvilinearProbe/Probe_C5-2_60.stl"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/CADModels/Stylus/Stylus_Example.stl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/data" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/fCal_Test_Calibration_3NWires.mha"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/fCal_Test_Calibration_3NWires_fCal2.0.mha"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/WaterTankBottomTranslationTrackerBuffer-trimmed.mha"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/WaterTankBottomTranslationVideoBuffer.mha"
    "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/EightLandmarkPointsTrackedForPhantomRegistration.mha"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/PlusApp-bin/PlusConfig.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusApp-bin/CommonWidgets/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusApp-bin/PointSetExtractor/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusApp-bin/SpatialSensorFusion/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusApp-bin/PlusServerLauncher/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusApp-bin/DiagnosticTools/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/PlusApp-bin/fCal/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/snr/Support/Plus-build-codeblocks/PlusApp-bin/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/snr/Support/Plus-build-codeblocks/PlusApp-bin/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
