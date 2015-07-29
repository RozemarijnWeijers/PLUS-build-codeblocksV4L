@ECHO off 
ECHO Build UserManual...

rem IS_MAKE_PROGRAM_MSBUILD?
if FALSE==TRUE goto MakeUsingMsBuild

rem ---------------- msdev -----------------------
:msdev

ECHO   Clear old files to force rebuild of documentation
"/usr/bin/make" PlusApp.sln /clean Release /project Documentation-PlusApp-UserManual 1> CreateUserManual.log 2>&1 
IF ERRORLEVEL 1 GOTO fail

ECHO   Generating documentation
"/usr/bin/make" PlusApp.sln /build Release /project Documentation-PlusApp-UserManual 1>> CreateUserManual.log 2>&1 
IF ERRORLEVEL 1 GOTO fail

goto success

rem ---------------- msbuild -----------------------
:MakeUsingMsBuild

ECHO   Clear old files to force rebuild of documentation
"/usr/bin/make" Documentation/Documentation-PlusApp-UserManual.vcxproj /p:Configuration=Release /target:clean 1> CreateUserManual.log 2>&1 
IF ERRORLEVEL 1 GOTO fail

ECHO   Generating documentation
"/usr/bin/make" Documentation/Documentation-PlusApp-UserManual.vcxproj /p:Configuration=Release /target:rebuild 1>> CreateUserManual.log 2>&1
IF ERRORLEVEL 1 GOTO fail

goto success

rem ---------------------------------------

:success
ECHO Documentation available at: /home/snr/Support/Plus-build-codeblocks/bin/Doc
exit /b 0

:fail
ECHO Failed to generate documentation
exit /b 1
