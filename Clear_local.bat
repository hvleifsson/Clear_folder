@ECHO OFF
:start
SET choice=
SET /p choice=Delete files in FOLDER PATH ? [Y/N]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='N' GOTO no
IF '%choice%'=='n' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:no
echo Nothing has been deleted. 
PAUSE
EXIT

:yes
echo Deleting files in C:\Workspace
set folder="C:\Workspace"
cd /d %folder%
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q || del "%%i" /s/q)
echo Done!
PAUSE
EXIT

PAUSE
