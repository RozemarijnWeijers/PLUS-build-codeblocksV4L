set(vtkGUISupportQt_LOADED 1)
set(vtkGUISupportQt_DEPENDS "vtkCommonExecutionModel;vtkFiltersExtraction;vtkImagingCore;vtkInteractionStyle;vtkRenderingOpenGL")
set(vtkGUISupportQt_LIBRARIES "vtkGUISupportQt")
set(vtkGUISupportQt_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2")
set(vtkGUISupportQt_LIBRARY_DIRS "")
set(vtkGUISupportQt_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}/lib")
set(vtkGUISupportQt_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkGUISupportQtHierarchy.txt")
set(VTK_QT_RCC_EXECUTABLE "/usr/lib/x86_64-linux-gnu/qt4/bin/rcc")
set(VTK_QT_MOC_EXECUTABLE "/usr/lib/x86_64-linux-gnu/qt4/bin/moc")
set(VTK_QT_UIC_EXECUTABLE "/usr/lib/x86_64-linux-gnu/qt4/bin/uic")
set(VTK_QT_QMAKE_EXECUTABLE "/usr/bin/qmake-qt4")
set(vtkGUISupportQt_EXCLUDE_FROM_WRAPPING 1)
