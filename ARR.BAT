@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
set /p arrname=Enter array name:
set BATFILENAME=BATFILE.ARR.CODE.txt

REM stop ::::::::::::::::::+::::
:NEXT

for /l %%i in (1,1,200) do set /p read=&echo set %arrname%[%%i]=!read!>>%BATFILENAME%

rem i am a christian +
rem haleluyah
