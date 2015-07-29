# CMake generated Testfile for 
# Source directory: /home/snr/Support/Plus-build-codeblocks/PlusLib/src/UsSimulatorAlgo/Testing
# Build directory: /home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/UsSimulatorAlgo/Testing
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(vtkUsSimulatorAlgoRunTestLinear "/home/snr/Support/Plus-build-codeblocks/bin/vtkUsSimulatorAlgoTest" "--config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_UsSimulatorAlgoTestLinear.xml" "--transforms-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/SpinePhantom2Freehand.mha" "--output-us-img-file=simulatorOutputLinear.mha")
SET_TESTS_PROPERTIES(vtkUsSimulatorAlgoRunTestLinear PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(vtkUsSimulatorAlgoCompareToBaselineTestLinear "/usr/bin/cmake" "-E" "compare_files" "/home/snr/Support/Plus-build-codeblocks/bin/Output/simulatorOutputLinear.mha" "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/UsSimulatorOutputSpinePhantom2LinearBaseline.mha")
SET_TESTS_PROPERTIES(vtkUsSimulatorAlgoCompareToBaselineTestLinear PROPERTIES  DEPENDS "vtkUsSimulatorAlgoRunTestLinear")
ADD_TEST(vtkUsSimulatorAlgoRunTestCurvilinear "/home/snr/Support/Plus-build-codeblocks/bin/vtkUsSimulatorAlgoTest" "--config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_UsSimulatorAlgoTestCurvilinear.xml" "--transforms-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/SpinePhantom2Freehand.mha" "--output-us-img-file=simulatorOutputCurvilinear.mha")
SET_TESTS_PROPERTIES(vtkUsSimulatorAlgoRunTestCurvilinear PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(vtkUsSimulatorAlgoCompareToBaselineTestCurvilinear "/usr/bin/cmake" "-E" "compare_files" "/home/snr/Support/Plus-build-codeblocks/bin/Output/simulatorOutputCurvilinear.mha" "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/UsSimulatorOutputSpinePhantom2CurvilinearBaseline.mha")
SET_TESTS_PROPERTIES(vtkUsSimulatorAlgoCompareToBaselineTestCurvilinear PROPERTIES  DEPENDS "vtkUsSimulatorAlgoRunTestCurvilinear")
