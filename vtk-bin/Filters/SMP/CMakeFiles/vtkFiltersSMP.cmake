set(vtkFiltersSMP_LOADED 1)
set(vtkFiltersSMP_DEPENDS "vtkFiltersCore;vtkFiltersGeneral")
set(vtkFiltersSMP_LIBRARIES "vtkFiltersSMP")
set(vtkFiltersSMP_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.2")
set(vtkFiltersSMP_LIBRARY_DIRS "")
set(vtkFiltersSMP_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}/lib")
set(vtkFiltersSMP_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkFiltersSMPHierarchy.txt")

