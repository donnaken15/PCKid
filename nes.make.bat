:# cc/ca/ld65 V2.16 - Git b8f30ba

del nes.out.*
cc65 nes.c -Oirs -Cl -v -T 2> nes.out.log
if "%ERRORLEVEL%"=="0" goto :err
ca65 nes.crt0.s -v -s 2>> nes.out.log
if "%ERRORLEVEL%"=="0" goto :err
ca65 nes.s -g -v -s 2>> nes.out.log
if "%ERRORLEVEL%"=="0" goto :err
goto :eof

:err
type nes.out.log
pause