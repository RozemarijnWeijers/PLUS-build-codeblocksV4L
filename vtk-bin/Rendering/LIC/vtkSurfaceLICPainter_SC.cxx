/* DO NOT EDIT.
 * Generated by /home/snr/Support/Plus-build-codeblocks/bin/vtkEncodeString-6.2
 * 
 * Define the vtkSurfaceLICPainter_SC string.
 *
 * Generated from file: /home/snr/Support/Plus-build-codeblocks/vtk/Rendering/LIC/vtkSurfaceLICPainter_SC.glsl
 */
#include "vtkSurfaceLICPainter_SC.h"
const char *vtkSurfaceLICPainter_SC =
"//=========================================================================\n"
"//\n"
"//  Program:   Visualization Toolkit\n"
"//  Module:    vtkSurfaceLICPainter_fs2.glsl\n"
"//\n"
"//  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen\n"
"//  All rights reserved.\n"
"//  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.\n"
"//\n"
"//     This software is distributed WITHOUT ANY WARRANTY; without even\n"
"//     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR\n"
"//     PURPOSE.  See the above copyright notice for more information.\n"
"//\n"
"//=========================================================================\n"
"\n"
"// This shader combines surface geometry, LIC, and  scalar colors.\n"
"\n"
"#version 110\n"
"\n"
"uniform sampler2D texVectors;       // vectors, depth\n"
"uniform sampler2D texGeomColors;    // scalar colors + lighting\n"
"uniform sampler2D texLIC;           // image lic\n"
"uniform int       uScalarColorMode; // select between blend, and map shader\n"
"uniform float     uLICIntensity;    // blend shader: blending factor for lic'd colors\n"
"uniform float     uMapBias;         // map shader: adjust the brightness of the result\n"
"uniform float     uMaskIntensity;   // blending factor for mask color\n"
"uniform vec3      uMaskColor;       // color for the masked out fragments\n"
"\n"
"/**\n"
"Convert from RGB color space into HSL colorspace.\n"
"*/\n"
"vec3 RGBToHSL(vec3 RGB)\n"
"{\n"
"  vec3 HSL = vec3(0.0, 0.0, 0.0);\n"
"\n"
"  float RGBMin = min(min(RGB.r, RGB.g), RGB.b);\n"
"  float RGBMax = max(max(RGB.r, RGB.g), RGB.b);\n"
"  float RGBMaxMinDiff = RGBMax - RGBMin;\n"
"\n"
"  HSL.z = (RGBMax + RGBMin) / 2.0;\n"
"\n"
"  if (RGBMaxMinDiff == 0.0)\n"
"    {\n"
"    // Gray scale\n"
"    HSL.x = 0.0;\n"
"    HSL.y = 0.0;\n"
"    }\n"
"  else\n"
"    {\n"
"    // Color\n"
"    if (HSL.z < 0.5)\n"
"      HSL.y = RGBMaxMinDiff / (RGBMax + RGBMin);\n"
"    else\n"
"      HSL.y = RGBMaxMinDiff / (2.0 - RGBMax - RGBMin);\n"
"\n"
"    float dR\n"
"      = (((RGBMax - RGB.r) / 6.0) + (RGBMaxMinDiff / 2.0)) / RGBMaxMinDiff;\n"
"    float dG\n"
"      = (((RGBMax - RGB.g) / 6.0) + (RGBMaxMinDiff / 2.0)) / RGBMaxMinDiff;\n"
"    float dB\n"
"      = (((RGBMax - RGB.b) / 6.0) + (RGBMaxMinDiff / 2.0)) / RGBMaxMinDiff;\n"
"\n"
"    if (RGB.r == RGBMax)\n"
"      HSL.x = dB - dG;\n"
"    else\n"
"    if (RGB.g == RGBMax)\n"
"      HSL.x = (1.0 / 3.0) + dR - dB;\n"
"    else\n"
"    if (RGB.b == RGBMax)\n"
"      HSL.x = (2.0 / 3.0) + dG - dR;\n"
"\n"
"    if (HSL.x < 0.0)\n"
"      HSL.x += 1.0;\n"
"\n"
"    if (HSL.x > 1.0)\n"
"      HSL.x -= 1.0;\n"
"    }\n"
"\n"
"  return HSL;\n"
"}\n"
"\n"
"/**\n"
"Helper for HSL to RGB conversion.\n"
"*/\n"
"float Util(float v1, float v2, float vH)\n"
"{\n"
"  if (vH < 0.0)\n"
"    vH += 1.0;\n"
"\n"
"  if (vH > 1.0)\n"
"     vH -= 1.0;\n"
"\n"
"  if ((6.0 * vH) < 1.0)\n"
"    return (v1 + (v2 - v1) * 6.0 * vH);\n"
"\n"
"  if ((2.0 * vH) < 1.0)\n"
"    return (v2);\n"
"\n"
"  if ((3.0 * vH) < 2.0)\n"
"    return (v1 + (v2 - v1) * ((2.0 / 3.0) - vH) * 6.0);\n"
"\n"
"  return v1;\n"
"}\n"
"\n"
"/**\n"
"Convert from HSL space into RGB space.\n"
"*/\n"
"vec3 HSLToRGB(vec3 HSL)\n"
"{\n"
"  vec3 RGB;\n"
"  if (HSL.y == 0.0)\n"
"    {\n"
"    // Gray\n"
"    RGB.r = HSL.z;\n"
"    RGB.g = HSL.z;\n"
"    RGB.b = HSL.z;\n"
"    }\n"
"  else\n"
"    {\n"
"    // Chromatic\n"
"    float v2;\n"
"    if (HSL.z < 0.5)\n"
"      v2 = HSL.z * (1.0 + HSL.y);\n"
"    else\n"
"      v2 = (HSL.z + HSL.y) - (HSL.y * HSL.z);\n"
"\n"
"    float v1 = 2.0 * HSL.z - v2;\n"
"\n"
"    RGB.r = Util(v1, v2, HSL.x + (1.0 / 3.0));\n"
"    RGB.g = Util(v1, v2, HSL.x);\n"
"    RGB.b = Util(v1, v2, HSL.x - (1.0 / 3.0));\n"
"    }\n"
"\n"
"  return RGB.rgb;\n"
"}\n"
"\n"
"void main()\n"
"{\n"
"  vec4 lic = texture2D(texLIC, gl_TexCoord[0].st);\n"
"  vec4 geomColor = texture2D(texGeomColors, gl_TexCoord[0].st);\n"
"\n"
"  // depth is used to determine which fragment belong to us\n"
"  // and we can change\n"
"  float depth = texture2D(texVectors, gl_TexCoord[0].st).a;\n"
"\n"
"  vec3 fragColorRGB;\n"
"  float valid;\n"
"  if (depth > 1.0e-3)\n"
"    {\n"
"    // we own it\n"
"    // shade LIC'ed geometry, or apply mask\n"
"    if (lic.g!=0.0)\n"
"      {\n"
"      // it's masked\n"
"      // apply fragment mask\n"
"      fragColorRGB = uMaskIntensity * uMaskColor + (1.0 - uMaskIntensity) * geomColor.rgb;\n"
"      valid = 0.0;\n"
"      }\n"
"    else\n"
"      {\n"
"      if (uScalarColorMode==0)\n"
"        {\n"
"        // blend with scalars\n"
"        fragColorRGB = lic.rrr * uLICIntensity + geomColor.rgb * (1.0 - uLICIntensity);\n"
"        }\n"
"      else\n"
"        {\n"
"        // multiply with scalars\n"
"        fragColorRGB = geomColor.rgb * clamp((uMapBias + lic.r), 0.0, 1.0);\n"
"        }\n"
"      if (lic.b != 0.0)\n"
"        {\n"
"        // didn't have the required guard pixels\n"
"        // don't consider it in min max estimation\n"
"        // for histpgram stretching\n"
"        valid = 0.0;\n"
"        }\n"
"      else\n"
"        {\n"
"        // ok to use in min/max estimates for histogram\n"
"        // stretching\n"
"        valid = 1.0;\n"
"        }\n"
"      }\n"
"    }\n"
"  else\n"
"    {\n"
"    // we don't own it\n"
"    // pass through scalars\n"
"    fragColorRGB = geomColor.rgb;\n"
"    valid = 0.0;\n"
"    }\n"
"\n"
"  // if no further stages this texture is\n"
"  // copied to the screen\n"
"  gl_FragData[0] = vec4(fragColorRGB, geomColor.a);\n"
"\n"
"  // if further stages, move to hsl space for contrast\n"
"  // enhancement. encoding valididty saves moving a texture to the cpu\n"
"  vec3 fragColorHSL = RGBToHSL(fragColorRGB);\n"
"  gl_FragData[1] = vec4(fragColorHSL, valid);\n"
"}\n"
"\n";

