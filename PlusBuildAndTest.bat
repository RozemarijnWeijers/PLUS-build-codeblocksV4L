
@ECHO off
REM Hide all your directories from users

REM Input parameters:
REM if "%1" == ""   goto experimental
REM if "%1" == "-E" goto experimental
REM if "%1" == "-N" goto nightly
REM if "%1" == "-C" goto continuous
REM if "%1" == "-I" goto individual

@REM Run PlusBuild tests 
@REM Run PlusLib tests 
cd "/home/snr/Support/Plus-build-codeblocks"
call BuildAndTest.bat %1

@REM Run PlusLib tests 
cd "\home\snr\Support\Plus-build-codeblocks\PlusLib-bin"
call BuildAndTest.bat %1

@REM Run PlusApp tests 
cd "\home\snr\Support\Plus-build-codeblocks\PlusApp-bin"
call BuildAndTest.bat %1

cd "\home\snr\Support\Plus-build-codeblocks"
