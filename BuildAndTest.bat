@ECHO off
REM Hide all your directories from users

SET ORIGPATH=%PATH%

SET DIRCMD=0 

if "%1" == "" goto experimental
if "%1" == "-E" goto experimental
if "%1" == "-N" goto nightly
if "%1" == "-C" goto continuous
if "%1" == "-I" goto individual

:experimental
"/usr/bin/ctest" -D Experimental --output-on-failure --build-and-test
goto END

:nightly
"/usr/bin/ctest" -D Nightly --build-and-test
goto END

:continuous
"/usr/bin/ctest" -D Continuous --build-and-test
@REM Wait for some time before continue to allow checking the results of the executions
timeout /t 15
goto END

:individual 
@REM Run individual tests with regexp search 
@REM Display the list of tests
"/usr/bin/ctest" -R "%2" -N
@REM Run selected tests
"/usr/bin/ctest" -R "%2" -V
goto END

:BUILDFAILED
ECHO ERROR: Build failed...
GOTO END 

:END
SET PATH=%ORIGPATH%
ECHO DONE
