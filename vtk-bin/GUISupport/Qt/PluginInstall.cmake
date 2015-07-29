# Configured file and directory locations.
SET(VTK_LIB_DIR "/home/snr/Support/Plus-build-codeblocks/bin")
SET(VTK_INSTALL_QT_DIR "plugins/designer")
SET(VTK_INSTALL_QT_PLUGIN_DIR "${CMAKE_INSTALL_PREFIX}/${VTK_INSTALL_QT_DIR}")
SET(VTK_INSTALL_QT_PLUGIN_FILE "libQVTKWidgetPlugin.so")
SET(VTK_CONFIGURATIONS "")

IF(VTK_CONFIGURATIONS)
  SET(VTK_LIBSUBDIR "/${BUILD_TYPE}")
ENDIF()

# Install the file to the specified location.
FILE(INSTALL DESTINATION "${VTK_INSTALL_QT_PLUGIN_DIR}" TYPE SHARED_LIBRARY
  FILES "${VTK_LIB_DIR}${VTK_LIBSUBDIR}/${VTK_INSTALL_QT_PLUGIN_FILE}")