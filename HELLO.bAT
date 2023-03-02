REM BEWARE CALLING THIS MULTIPLE TIMES
REM VARIABLES ARE NOT RESET!
for /f "delims=*" %%i in    ('cd') DO set currentdir=%%i
:back
for /f "delims=" %%i in     ('dir /b') do set rootfilename=%%i& goto next
:next
if NOT DEFINED rootfilename ( set /a counter+=1 ) else ( goto HEREIAM )
REM if %counter%==1 ( cd \ & (for /f "delims=*" %%i in ('cd') DO set currentdir=%%i)&(for /f "delims=" %%i in ('dir /b') do set rootfilename=%%i& goto nextt)) else ( goto HEREIAM )
:nextt
REM if NOT DEFINED rootfilename (if %counter%==1 cd %homedrive%\Windows&(for /f "delims=*" %%i in ('cd') DO set currentdir=%%i)&(for /f "delims=" %%i in ('dir /b') do set rootfilename=%%i& goto nexttt)  ) else ( goto HEREIAM )
:nexttt
if NOT DEFINED rootfilename (echo ERROR 404 FILE NOT FOUND & PAUSE & EXIT ) else ( goto HEREIAM ) & REM POST CODE ERROR
:HEREIAM
@echo off & cls
echo %counter% SERIOUS^!& PAUSE
