#
# This module is provided as PLUSAPP_USE_FILE 
# It can be INCLUDEd in a project to load the needed compiler and linker
# settings to use Plus library.
#

IF(NOT PLUSAPP_USE_FILE_INCLUDED)
    SET(PLUSAPP_USE_FILE_INCLUDED 1)

    ## Set PlusApp binary dir path 
    SET(PlusApp_BINARY_DIR "/home/snr/Support/Plus-build-codeblocks/PlusApp-bin" )
    SET(PlusApp_SOURCE_DIR "/home/snr/Support/Plus-build-codeblocks/PlusApp" )
    
	# Add include directories needed to use PlusApp library 
	INCLUDE_DIRECTORIES(/home/snr/Support/Plus-build-codeblocks/PlusApp;/home/snr/Support/Plus-build-codeblocks/PlusApp-bin;/home/snr/Support/Plus-build-codeblocks/PlusApp/CommonWidgets;/home/snr/Support/Plus-build-codeblocks/PlusApp-bin/CommonWidgets)

	# Add link directories needed to use Plus library
	LINK_DIRECTORIES()
    
    SET(PLUSAPP_BUILD_SHARED_LIBS ON)
    
    SET(QT_QMAKE_EXECUTABLE /usr/bin/qmake-qt4)
    
    ## Find SVN 
    SET (SVN_FOUND TRUE)
    IF ( SVN_FOUND )
        SET( Subversion_SVN_EXECUTABLE "/usr/bin/svn" CACHE INTERNAL "")
    ENDIF (SVN_FOUND)
    
ENDIF(NOT PLUSAPP_USE_FILE_INCLUDED)
