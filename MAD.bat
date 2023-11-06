@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
set BATFILENAME=BATFILE.ARR.CODE.txt
echo.Press a key to start writing... [File: %BATFILENAME% will be deleted]
PAUSE >NUL
del %BATFILENAME%
set /p arrname=Enter array name:
set /p index=Starting index:
set BATFILENAME=BATFILE.ARR.CODE.txt
start cmd /c "@echo off & title File Viewer & color 5e & for /l %%i in (1,1,299999) do type %BATFILENAME% 2>NUL& ping -n 2 localhost >NUL& echo. Updating &  ping -n 2 localhost >NUL & cls "
REM stop ::::::::::::::::::+::::
:NEXT

for /l %%i in (%index%,1,200) do set /p read=Enter value at index %%i:&echo set %arrname%[%%i]=!read!>>%BATFILENAME%

rem i am a christian +
rem haleluyah
