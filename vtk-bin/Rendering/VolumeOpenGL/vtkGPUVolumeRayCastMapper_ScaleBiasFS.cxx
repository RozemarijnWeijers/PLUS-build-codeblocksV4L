/* DO NOT EDIT.
 * Generated by /home/snr/Support/Plus-build-codeblocks/bin/vtkEncodeString-6.2
 * 
 * Define the vtkGPUVolumeRayCastMapper_ScaleBiasFS string.
 *
 * Generated from file: /home/snr/Support/Plus-build-codeblocks/vtk/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_ScaleBiasFS.glsl
 */
#include "vtkGPUVolumeRayCastMapper_ScaleBiasFS.h"
const char *vtkGPUVolumeRayCastMapper_ScaleBiasFS =
"/*=========================================================================\n"
"\n"
"  Program:   Visualization Toolkit\n"
"  Module:    vtkGPUVolumeRayCastMapper_ScaleBiasFS.glsl\n"
"\n"
"  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen\n"
"  All rights reserved.\n"
"  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.\n"
"\n"
"     This software is distributed WITHOUT ANY WARRANTY; without even\n"
"     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR\n"
"     PURPOSE.  See the above copyright notice for more information.\n"
"\n"
"=========================================================================*/\n"
"\n"
"// This fragment shader scales and biases a framebuffer passed as a texture.\n"
"// Incoming color from the texture is pre-multiplied by alpha.\n"
"// It does not affect the alpha component.\n"
"// Passing the framebuffer as a texture allows the use of a reduction factor\n"
"// compared to the size of the final image.\n"
"\n"
"#version 110\n"
"\n"
"// Framebuffer to scale.\n"
"uniform sampler2D frameBufferTexture;\n"
"uniform float scale;\n"
"uniform float bias;\n"
"\n"
"void main()\n"
"{\n"
"  vec4 color=texture2D(frameBufferTexture,gl_TexCoord[0].xy);\n"
"  if(color.a==0.0)\n"
"    {\n"
"    discard;\n"
"    }\n"
"  // As incoming color is pre-multiplied by alpha, the bias has to be\n"
"  // multiplied by alpha before adding it.\n"
"  gl_FragColor.r=color.r*scale+bias*color.a;\n"
"  gl_FragColor.g=color.g*scale+bias*color.a;\n"
"  gl_FragColor.b=color.b*scale+bias*color.a;\n"
"  gl_FragColor.a=color.a;\n"
"}\n"
"\n";

