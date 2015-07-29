/* DO NOT EDIT.
 * Generated by /home/snr/Support/Plus-build-codeblocks/bin/vtkEncodeString-6.2
 * 
 * Define the vtkOpenGLPropertyDefaultPropFunc_fs string.
 *
 * Generated from file: /home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkOpenGLPropertyDefaultPropFunc_fs.glsl
 */
#include "vtkOpenGLPropertyDefaultPropFunc_fs.h"
const char *vtkOpenGLPropertyDefaultPropFunc_fs =
"// ============================================================================\n"
"//\n"
"//  Program:   Visualization Toolkit\n"
"//  Module:    vtkOpenGLPropertyDefaultPropFunc_fs.glsl\n"
"//\n"
"//  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen\n"
"//  All rights reserved.\n"
"//  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.\n"
"//\n"
"//     This software is distributed WITHOUT ANY WARRANTY; without even\n"
"//     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR\n"
"//     PURPOSE.  See the above copyright notice for more information.\n"
"//\n"
"// ============================================================================\n"
"\n"
"// Default fragment shader used on property.\n"
"\n"
"#version 110\n"
"\n"
"uniform int useTexture;\n"
"uniform sampler2D texture;\n"
"\n"
"void propFuncFS()\n"
"{\n"
"  if(useTexture==1)\n"
"    {\n"
"    gl_FragColor=gl_Color*texture2D(texture,gl_TexCoord[0].xy);\n"
"    }\n"
"  else\n"
"    {\n"
"    gl_FragColor=gl_Color;\n"
"    }\n"
"}\n"
"\n";

