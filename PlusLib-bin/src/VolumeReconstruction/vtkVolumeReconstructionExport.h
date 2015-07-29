/*=Plus=header=begin======================================================
  Program: Plus
  Copyright (c) Laboratory for Percutaneous Surgery. All rights reserved.
  See License.txt for details.
=========================================================Plus=header=end*/

// This file is automatically generated from PlusExport.h.in by GENERATE_EXPORT_DIRECTIVE_FILE macro.

// .NAME __vtkVolumeReconstructionExport - manage Windows system differences
// .SECTION Description
// The __vtkVolumeReconstructionExport manages DLL export syntax differences
// between different operating systems.

#ifndef __vtkVolumeReconstructionExport_h
#define __vtkVolumeReconstructionExport_h

#if defined(WIN32) && !defined(vtkVolumeReconstruction_STATIC)
 #if defined(vtkVolumeReconstruction_EXPORTS)
  #define vtkVolumeReconstructionExport __declspec( dllexport )
 #else
  #define vtkVolumeReconstructionExport __declspec( dllimport )
 #endif
#else
 #define vtkVolumeReconstructionExport
#endif

#endif