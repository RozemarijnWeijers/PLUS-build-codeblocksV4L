# CMake generated Testfile for 
# Source directory: /home/snr/Support/Plus-build-codeblocks/PlusLib/src/ImageProcessingAlgo/Testing
# Build directory: /home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/ImageProcessingAlgo/Testing
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(vtkRfToBrightnessConvertRunTest "/home/snr/Support/Plus-build-codeblocks/bin/RfProcessor" "--config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_RfProcessingAlgoCurvilinearTest.xml" "--rf-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/UltrasonixCurvilinearRfData.mha" "--output-img-file=outputUltrasonixCurvilinearBrightnessData.mha" "--operation=BRIGHTNESS_CONVERT")
SET_TESTS_PROPERTIES(vtkRfToBrightnessConvertRunTest PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(vtkRfToBrightnessConvertCompareToBaselineTest "/usr/bin/cmake" "-E" "compare_files" "/home/snr/Support/Plus-build-codeblocks/bin/Output/outputUltrasonixCurvilinearBrightnessData_OutputChannel_ScanConvertOutput.mha" "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/UltrasonixCurvilinearBrightnessData.mha")
SET_TESTS_PROPERTIES(vtkRfToBrightnessConvertCompareToBaselineTest PROPERTIES  DEPENDS "vtkRfToBrightnessConvertRunTest")
ADD_TEST(vtkUsScanConvertCurvilinearRunTest "/home/snr/Support/Plus-build-codeblocks/bin/RfProcessor" "--config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_RfProcessingAlgoCurvilinearTest.xml" "--rf-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/UltrasonixCurvilinearRfData.mha" "--output-img-file=outputUltrasonixCurvilinearScanConvertedData.mha" "--operation=BRIGHTNESS_SCAN_CONVERT")
SET_TESTS_PROPERTIES(vtkUsScanConvertCurvilinearRunTest PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(vtkUsScanConvertCurvilinearCompareToBaselineTest "/usr/bin/cmake" "-E" "compare_files" "/home/snr/Support/Plus-build-codeblocks/bin/Output/outputUltrasonixCurvilinearScanConvertedData_OutputChannel_ScanConvertOutput.mha" "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/UltrasonixCurvilinearScanConvertedData.mha")
SET_TESTS_PROPERTIES(vtkUsScanConvertCurvilinearCompareToBaselineTest PROPERTIES  DEPENDS "vtkUsScanConvertCurvilinearRunTest")
ADD_TEST(vtkUsScanConvertLinearRunTest "/home/snr/Support/Plus-build-codeblocks/bin/RfProcessor" "--config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_RfProcessingAlgoLinearTest.xml" "--rf-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/UltrasonixLinearRfData.mha" "--output-img-file=outputUltrasonixLinearScanConvertedData.mha" "--operation=BRIGHTNESS_SCAN_CONVERT")
SET_TESTS_PROPERTIES(vtkUsScanConvertLinearRunTest PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(vtkUsScanConvertLinearCompareToBaselineTest "/usr/bin/cmake" "-E" "compare_files" "/home/snr/Support/Plus-build-codeblocks/bin/Output/outputUltrasonixLinearScanConvertedData_OutputChannel_ScanConvertOutput.mha" "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/UltrasonixLinearScanConvertedData.mha")
SET_TESTS_PROPERTIES(vtkUsScanConvertLinearCompareToBaselineTest PROPERTIES  DEPENDS "vtkUsScanConvertLinearRunTest")
ADD_TEST(vtkUsScanConvertBkCurvilinearRunTest "/home/snr/Support/Plus-build-codeblocks/bin/RfProcessor" "--config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/PlusDeviceSet_fCal_BkProFocus_OpenIGTLinkTracker.xml" "--rf-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/BkCurvilinearRfData.mhd" "--output-img-file=outputBkCurvilinearScanConvertedData.mha" "--operation=BRIGHTNESS_SCAN_CONVERT")
SET_TESTS_PROPERTIES(vtkUsScanConvertBkCurvilinearRunTest PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(vtkUsScanConvertBkCurvilinearCompareToBaselineTest "/usr/bin/cmake" "-E" "compare_files" "/home/snr/Support/Plus-build-codeblocks/bin/Output/outputBkCurvilinearScanConvertedData_OutputChannel_VideoStream.mha" "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/BkCurvilinearScanConvertedData.mha")
SET_TESTS_PROPERTIES(vtkUsScanConvertBkCurvilinearCompareToBaselineTest PROPERTIES  DEPENDS "vtkUsScanConvertBkCurvilinearRunTest")
ADD_TEST(DrawScanLinesCurvilinearRunTest "/home/snr/Support/Plus-build-codeblocks/bin/DrawScanLines" "--config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_RfProcessingAlgoCurvilinearTest.xml" "--source-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/UltrasonixCurvilinearScanConvertedData.mha" "--output-seq-file=UltrasonixCurvilinearScanConvertedDataWithScanlines.mha")
SET_TESTS_PROPERTIES(DrawScanLinesCurvilinearRunTest PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(DrawScanLinesLinearRunTest "/home/snr/Support/Plus-build-codeblocks/bin/DrawScanLines" "--config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_RfProcessingAlgoLinearTest.xml" "--source-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/UltrasonixLinearScanConvertedData.mha" "--output-seq-file=UltrasonixLinearScanConvertedDataWithScanlines.mha")