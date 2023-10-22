@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
set /p arrname=Enter array name:
set /p BATFILENAME=Enter Bat file name to save to:
REM::start:::get:file::extension
set /a NUM=%random%
REM OPTIONAL CODE
REM echo set str=%~x1 >temp_FILE_%NUM%.bat
REM echo echo %str% >>temp_FILE_%NUM%.bat
REM for /f %%i in ('temp_FILE_%NUM%.bat %BATFILENAME%') do set Ex=%%i & if "%Ex%"=="BAT" ( GOTO NEXT ) ELSE ( SET BATFILENAME=%BATFILENAME%.BAT )
REM stop ::::::::::::::::::+::::
:NEXT
REM DEL temp_FILE_%NUM%.bat
for /l %%i in (1,1,200) do set /p read=&echo set %arrname%[%%i]=!read!>>%BATFILENAME%

rem i am a christian +
rem haleluyah
