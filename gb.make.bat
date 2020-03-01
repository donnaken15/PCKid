del gb.out.*
lcc -o out.gb gb.c -tempdir=tmp -Wa-l 2> gb.out.log
if "%ERRORLEVEL%"=="0" goto :eof
type gb.out.log
pause