FILE(REMOVE_RECURSE
  "CMakeFiles/vtk"
  "CMakeFiles/vtk-complete"
  "vtk-prefix/src/vtk-stamp/vtk-install"
  "vtk-prefix/src/vtk-stamp/vtk-mkdir"
  "vtk-prefix/src/vtk-stamp/vtk-download"
  "vtk-prefix/src/vtk-stamp/vtk-update"
  "vtk-prefix/src/vtk-stamp/vtk-patch"
  "vtk-prefix/src/vtk-stamp/vtk-configure"
  "vtk-prefix/src/vtk-stamp/vtk-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/vtk.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
