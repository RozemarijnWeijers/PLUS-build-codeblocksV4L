// -*- c++ -*-
/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkFloatingPointExceptionsConfigure.h.in

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#ifndef vtkFloatingPointExceptionsConfigure_h
#define vtkFloatingPointExceptionsConfigure_h

#define VTK_HAS_FEENABLEEXCEPT

// VTK_HAS_FEENABLEEXCEPT is only defined if the function exists.
#if defined(VTK_HAS_FEENABLEEXCEPT) && defined(_GNU_SOURCE)
# define VTK_USE_FENV 1
#endif

#endif //vtkFloatingPointExceptionsConfigure_h
