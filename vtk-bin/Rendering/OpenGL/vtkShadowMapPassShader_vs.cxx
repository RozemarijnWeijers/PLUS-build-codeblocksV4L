/* DO NOT EDIT.
 * Generated by /home/snr/Support/Plus-build-codeblocks/bin/vtkEncodeString-6.2
 * 
 * Define the vtkShadowMapPassShader_vs string.
 *
 * Generated from file: /home/snr/Support/Plus-build-codeblocks/vtk/Rendering/OpenGL/vtkShadowMapPassShader_vs.glsl
 */
#include "vtkShadowMapPassShader_vs.h"
const char *vtkShadowMapPassShader_vs =
"// ============================================================================\n"
"//\n"
"//  Program:   Visualization Toolkit\n"
"//  Module:    vtkShadowMapPassShader_vs.glsl\n"
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
"// Vertex shader used by the shadow mapping render pass.\n"
"\n"
"#version 110\n"
"\n"
"// NOTE: this shader is concatened on the fly by vtkShadowMapPass.cxx by adding\n"
"// a line at the beginning like:\n"
"// #define VTK_LIGHTING_NUMBER_OF_LIGHTS equal to the number of shadowing\n"
"// lights.\n"
"\n"
"\n"
"void propFuncVS();\n"
"\n"
"// defined in vtkLighting_s.glsl\n"
"\n"
"void lightSeparateSpecularColor(gl_LightSourceParameters lightSource,\n"
"                                gl_MaterialParameters m,\n"
"                                vec3 surfacePosEyeCoords,\n"
"                                vec3 n,\n"
"                                bool twoSided,\n"
"                                inout vec4 cpri,\n"
"                                inout vec4 csec);\n"
"\n"
"void initBlackColors(out vec4 cpri,\n"
"                     out vec4 csec);\n"
"\n"
"\n"
"// input are\n"
"// uniform gl_TextureMatrix[VTK_LIGHTING_NUMBER_OF_LIGHTS];\n"
"\n"
"varying vec4 shadowCoord[VTK_LIGHTING_NUMBER_OF_LIGHTS];\n"
"varying vec4 frontColors[VTK_LIGHTING_NUMBER_OF_LIGHTS];\n"
"\n"
"void main(void)\n"
"{\n"
"  vec4 heyeCoords=gl_ModelViewMatrix*gl_Vertex;\n"
"  vec3 eyeCoords=heyeCoords.xyz/heyeCoords.w;\n"
"  vec3 n=gl_NormalMatrix*gl_Normal;\n"
"  n=normalize(n);\n"
"\n"
"  int i=0;\n"
"  while(i<VTK_LIGHTING_NUMBER_OF_LIGHTS)\n"
"    {\n"
"    vec4 cpri;\n"
"    vec4 csec;\n"
"    initBlackColors(cpri,csec); // because ambient in previous pass.\n"
"\n"
"    lightSeparateSpecularColor(gl_LightSource[i],gl_FrontMaterial,eyeCoords,n,\n"
"                               false,cpri,csec);\n"
"//    frontColors[i]=vec4(0.5,0.5,0.5,1.0); // cpri+csec;\n"
"\n"
"//    frontColors[i]=gl_FrontMaterial.diffuse*gl_LightSource[i].diffuse;\n"
"\n"
"    frontColors[i]=cpri; //+csec;\n"
"\n"
"    // we could have everything in just gl_TextureMatrix[i] but this would\n"
"    // require to add code vtkOpenGLActor. Also the value of the uniform\n"
"    // gl_TextureMatrix[i] would have to be changed on each actor.\n"
"    // gl_TextureMatrix[i] would be:\n"
"    // scale_bias*projection_light[i]*view_light[i]*model\n"
"    // and we would have just texCoord=gl_TextureMatrix[i]*gl_Vertex;\n"
"    //\n"
"    // gl_TextureMatrix[i] is actually:\n"
"    // scale_bias*projection_light[i]*view_light[i]*view_camera_inv\n"
"\n"
"    vec4 texCoord=gl_TextureMatrix[i]*heyeCoords;\n"
"    shadowCoord[i]=texCoord/texCoord.w;\n"
"    ++i;\n"
"    }\n"
"\n"
"  // we have to use the fixed-pipeline transform to avoid mismatching with\n"
"  // other passes.\n"
"  gl_Position=ftransform();\n"
"\n"
"  // propFuncVS(); // opportunity for the prop to execute its vertex shader.\n"
"\n"
"\n"
"\n"
"  // we don't initialize gl_FrontColor because we have an array of colors\n"
"  // in frontColors[].\n"
"}\n"
"\n";

