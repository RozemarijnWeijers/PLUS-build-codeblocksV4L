# - Config file for the PlusApp package
# It defines the following variables
#  PLUSAPP_INCLUDE_DIRS - include directories for PlusApp
#  PLUSAPP_LIBRARY_DIRS - library directories for PlusApp (normally not used!)
 
# Tell the user project where to find our headers and libraries
SET(PLUSAPP_INCLUDE_DIRS "/home/snr/Support/Plus-build-codeblocks/PlusApp;/home/snr/Support/Plus-build-codeblocks/PlusApp-bin;/home/snr/Support/Plus-build-codeblocks/PlusApp/CommonWidgets;/home/snr/Support/Plus-build-codeblocks/PlusApp-bin/CommonWidgets")
SET(PLUSAPP_LIBRARY_DIRS "")

# Tell the user project where to find PlusApp use file
SET(PlusApp_USE_FILE "/home/snr/Support/Plus-build-codeblocks/PlusApp-bin/UsePlusApp.cmake" )
 
# Our library dependencies (contains definitions for IMPORTED targets)
include("/home/snr/Support/Plus-build-codeblocks/PlusApp-bin/PlusAppLibraryDepends.cmake")

