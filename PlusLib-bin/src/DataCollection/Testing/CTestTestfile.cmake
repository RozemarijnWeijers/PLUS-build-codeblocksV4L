# CMake generated Testfile for 
# Source directory: /home/snr/Support/Plus-build-codeblocks/PlusLib/src/DataCollection/Testing
# Build directory: /home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/DataCollection/Testing
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(TimestampFilteringTest "/home/snr/Support/Plus-build-codeblocks/bin/TimestampFilteringTest" "--source-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/TimestampFilteringTest.mha" "--averaged-items-for-filtering=20" "--max-timestamp-difference=0.08" "--min-stdev-reduction-factor=3.0" "--transform=IdentityToIdentityTransform")
SET_TESTS_PROPERTIES(TimestampFilteringTest PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(vtkDataCollectorTest1 "/home/snr/Support/Plus-build-codeblocks/bin/vtkDataCollectorTest1" "--config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_DataCollectionOnly_SavedDataset.xml" "--video-buffer-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/WaterTankBottomTranslationVideoBuffer.mha" "--tracker-buffer-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/WaterTankBottomTranslationTrackerBuffer-trimmed.mha" "--rendering-off")
SET_TESTS_PROPERTIES(vtkDataCollectorTest1 PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(vtkDataCollectorTest2 "/home/snr/Support/Plus-build-codeblocks/bin/vtkDataCollectorTest2" "--video-buffer-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/WaterTankBottomTranslationVideoBuffer.mha" "--tracker-buffer-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/WaterTankBottomTranslationTrackerBuffer-trimmed.mha" "--config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_DataCollectionOnly_SavedDataset.xml" "--acq-time-length=5" "--verbose=3")
SET_TESTS_PROPERTIES(vtkDataCollectorTest2 PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(ReplayRecordedDataTest "/home/snr/Support/Plus-build-codeblocks/bin/ReplayRecordedDataTest" "--config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_OpenIGTLinkTestServer.xml")
SET_TESTS_PROPERTIES(ReplayRecordedDataTest PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR")
ADD_TEST(vtkDataCollectorFileTest "/home/snr/Support/Plus-build-codeblocks/bin/vtkDataCollectorFileTest" "--config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_DataCollectionOnly_File.xml")
SET_TESTS_PROPERTIES(vtkDataCollectorFileTest PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(PlusVersion "/home/snr/Support/Plus-build-codeblocks/bin/PlusVersion")
ADD_TEST(vtkMetaImageSequenceIOTest "/home/snr/Support/Plus-build-codeblocks/bin/vtkMetaImageSequenceIOTest" "--img-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/MetaImageSequenceIOTest1.mhd" "--output-img-seq-file=MetaImageSequenceIOTest1Output.mha")
SET_TESTS_PROPERTIES(vtkMetaImageSequenceIOTest PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(ViewSeqMetaFileTest "/home/snr/Support/Plus-build-codeblocks/bin/ViewSeqMetaFile" "--source-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/SpinePhantomFreehand.mha" "--config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_SpinePhantomFreehandReconstructionOnly.xml" "--image-to-reference-transform=ImageToTracker" "--rendering-off")
SET_TESTS_PROPERTIES(ViewSeqMetaFileTest PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(itkFcsvReaderTest1 "/home/snr/Support/Plus-build-codeblocks/bin/itkFcsvReaderTest1" "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/FcsvReaderTest1.fcsv")
SET_TESTS_PROPERTIES(itkFcsvReaderTest1 PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(itkFcsvWriterTest1 "/home/snr/Support/Plus-build-codeblocks/bin/itkFcsvWriterTest1" "/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/FcsvReaderTest1.fcsv" "/home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/DataCollection/Testing/FcsvWriterTest1.fcsv")
SET_TESTS_PROPERTIES(itkFcsvWriterTest1 PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(vtkPlusDeviceFactoryTest "/home/snr/Support/Plus-build-codeblocks/bin/vtkPlusDeviceFactoryTest")
ADD_TEST(TransformInterpolationTest "/home/snr/Support/Plus-build-codeblocks/bin/TransformInterpolationTest" "--source-seq-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/TestImages/TransformInterpolationTest.mha" "--transform=ProbeToTracker" "--max-rotation-difference=1.0" "--max-translation-difference=0.5")
