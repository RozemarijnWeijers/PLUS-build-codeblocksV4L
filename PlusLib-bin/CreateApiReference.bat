@ECHO off 
ECHO Build PlusLib ApiReference...

rem IS_MAKE_PROGRAM_MSBUILD?
if FALSE==TRUE goto MakeUsingMsBuild

rem ---------------- msdev -----------------------
:msdev

ECHO   Clear old files to force rebuild of documentation
"/usr/bin/make" PlusLib.sln /clean Release /project Documentation-PlusLib-ApiReference 1> CreateDoc.log 2>&1 
IF ERRORLEVEL 1 GOTO fail

ECHO   Generating Documentation-PlusLib-ApiReference
"/usr/bin/make" PlusLib.sln /build Release /project Documentation-PlusLib-ApiReference 1>> CreateDoc.log 2>&1 
IF ERRORLEVEL 1 GOTO fail

goto success

rem ---------------- msbuild -----------------------
:MakeUsingMsBuild

ECHO   Clear old files to force rebuild of documentation
"/usr/bin/make" src/Documentation/ApiReference/Documentation-PlusLib-ApiReference.vcxproj /p:Configuration=Release /target:clean 1> CreateDoc.log 2>&1 
IF ERRORLEVEL 1 GOTO fail

ECHO   Generating documentation
"/usr/bin/make" src/Documentation/ApiReference/Documentation-PlusLib-ApiReference.vcxproj /p:Configuration=Release /target:rebuild 1>> CreateDoc.log 2>&1
IF ERRORLEVEL 1 GOTO fail

goto success

rem ---------------------------------------

:success
ECHO Documentation available at: /home/snr/Support/Plus-build-codeblocks/bin/Doc
goto end

:fail
ECHO Failed to generate documentation
goto end

:end
