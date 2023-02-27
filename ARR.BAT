SETLOCAL ENABLEDELAYEDEXPANSION
set /p arrname=
set /p BATFILENAME=
REM::start:::get:file::extension
set /a NUM=%random%
echo set str=%~x1 >temp_FILE_%NUM%.bat
echo echo %str% >>temp_FILE_%NUM%.bat
for /f %%i in ('temp_FILE_%NUM%.bat %BATFILENAME%') do set Ex=%%i & if "%Ex%"=="BAT" ( GOTO NEXT ) ELSE ( SET BATFILENAME=%BATFILENAME%.BAT )
REM stop ::::::::::::::::::+::::
:NEXT
DEL temp_FILE_%NUM%.bat
for /l %%i in (1,1,200) do set /p read=&echo set %arrname%[%%i]=!read!>>%BATFILENAME%

rem i am a christian +
rem haleluyah
