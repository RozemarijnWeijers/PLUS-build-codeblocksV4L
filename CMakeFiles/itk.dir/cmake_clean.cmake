FILE(REMOVE_RECURSE
  "CMakeFiles/itk"
  "CMakeFiles/itk-complete"
  "itk-prefix/src/itk-stamp/itk-install"
  "itk-prefix/src/itk-stamp/itk-mkdir"
  "itk-prefix/src/itk-stamp/itk-download"
  "itk-prefix/src/itk-stamp/itk-update"
  "itk-prefix/src/itk-stamp/itk-patch"
  "itk-prefix/src/itk-stamp/itk-configure"
  "itk-prefix/src/itk-stamp/itk-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/itk.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
