# CMake generated Testfile for 
# Source directory: /home/snr/Support/Plus-build-codeblocks/PlusApp/SpatialSensorFusion
# Build directory: /home/snr/Support/Plus-build-codeblocks/PlusApp-bin/SpatialSensorFusion
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(SpatialSensorFusionTest "/home/snr/Support/Plus-build-codeblocks/bin/SpatialSensorFusion" "--ahrs-algo=MADGWICK_IMU" "--ahrs-algo-gain" "1.5" "--initial-gain" "1" "--initial-repeated-frame-number=1000" "--input-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/SpatialSensorFusionTestInput.mha" "--output-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/SpatialSensorFusionTestOutput.mha" "--baseline-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/SpatialSensorFusionTestBaseline.mha" "--west-axis-index=1")
SET_TESTS_PROPERTIES(SpatialSensorFusionTest PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
