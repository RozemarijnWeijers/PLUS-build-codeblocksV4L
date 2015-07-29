@ECHO off 
REM Hide all your directories from users

REM Return code is 0 on success and >0 if something failed
SET RETURN_CODE=0

REM First we need to build a Release version 

rem IS_MAKE_PROGRAM_MSBUILD?
if FALSE==TRUE goto MakeUsingMsBuild
rem ---------------- msdev build -----------------------
"/usr/bin/make" PlusApp.sln /build Release /project ALL_BUILD
IF ERRORLEVEL 1 GOTO buildfail
goto BUILDDOCUMENTATION
rem ---------------- msbuild build -----------------------
:MakeUsingMsBuild
"/usr/bin/make" ALL_BUILD.vcxproj /p:Configuration=Release /target:build
IF ERRORLEVEL 1 GOTO BUILDFAILED
goto BUILDDOCUMENTATION 

:BUILDDOCUMENTATION
REM Build documentation
IF OFF==OFF GOTO PACKAGE
call CreateUserManual.bat
IF ERRORLEVEL 1 GOTO BUILDFAILED
ECHO User manual generation DONE

:PACKAGE
REM Build the package 
"/usr/bin/cpack" --config ./CPackConfig.cmake
IF ERRORLEVEL 1  GOTO PACKAGINGFAILED
ECHO Packaging DONE

:SUCCESS
ECHO Package generation is successfully completed.
exit /b 0

:BUILDFAILED
ECHO ERROR: Build failed...
exit /b 1

:PACKAGINGFAILED
ECHO ERROR: Package generation failed...
exit /b 2
