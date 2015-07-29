# CMake generated Testfile for 
# Source directory: /home/snr/Support/Plus-build-codeblocks/PlusLib/src/PlusServer/Testing
# Build directory: /home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/PlusServer/Testing
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(PlusServer "/home/snr/Support/Plus-build-codeblocks/bin/PlusServer" "--config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_OpenIGTLinkTestServer.xml" "--running-time=5" "--testing-config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_OpenIGTLinkTestClient.xml")
SET_TESTS_PROPERTIES(PlusServer PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
ADD_TEST(PlusServerOpenIGTLinkCommandsTest "/home/snr/Support/Plus-build-codeblocks/bin/PlusServerRemoteControl" "--server-config-file=/home/snr/Support/Plus-build-codeblocks/PlusLib/data/ConfigFiles/Testing/PlusDeviceSet_OpenIGTLinkCommandsTest.xml" "--run-tests")
SET_TESTS_PROPERTIES(PlusServerOpenIGTLinkCommandsTest PROPERTIES  FAIL_REGULAR_EXPRESSION "ERROR;WARNING")
