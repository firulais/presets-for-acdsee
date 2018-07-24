@ECHO OFF
REM SETLOCAL ENABLEDELAYEDEXPANSION

REM Search the .\Images directroy for jpg files and
REM lookup if we find a raw/dng file for that jpg.
REM If the orinal image (raw/dng) is not found, we assume
REM the jpg in the .\Images is the orignal 
REM (e.g. because camera HDR, etc. was used and no raw was saved).
REM In this case copy the jpg from the .\Images directory to the main directory.
REM Maybe this "orignal" jpg can be converted to .tif to not mix up.

FOR %%f IN (.\Images\*.JPG) DO call :REFXDIR "%%~nf"
PAUSE
GOTO :eof

REM IMAGES ("o.JPG"|c.JPG)
REM
REM ARCHIVE (DNG|o.JPG) 
REM PRIVATE (DNG|o.JPG) 
REM ALBUM (?)
REM STITCH[1,2,..] (DNG|c.JPG) 
REM
REM RAW (NEF|CR2)
REM
REM c.JPG .. camera.JPG | d.JPG .. developed.JPG | o.JPG .. servesAsOrinal.JPG
REM TODO: the o.JPG maybe converted to a o.TIF so no misleading

:REFXDIR
echo seach orignal %~n1 in ...

set name=%~n1
set name=%name:~0,8%

set FND=N
call :REFXFILE "" %name%
FOR /D %%d IN ("Archive*") DO call :REFXFILE %%d %name%
FOR /D %%d IN ("Private*") DO call :REFXFILE %%d %name%
FOR /D %%d IN ("Stitch*") DO call :REFXFILE %%d %name%

echo finally found %FND%

REM JPG is not found in DNG means it is an original
IF "%FND%"=="N" (
	echo copy .\Images\%name%.JPG ...
	copy .\Images\%name%.JPG .
	REM Adobe DNG Converter .. JPG to DNG
	REM "C:\Program Files (x86)\Adobe\Adobe DNG Converter.exe" -c "%~n1.JPG"
)

GOTO :eof

:REFXFILE
set dir=%~n1
set file=%~n2
IF "%dir%" == "" (set res="%dir%%file%*.*") else (set res="%dir%\%file%*.*")

echo    %res%
REM FOR /R %dir% %%g IN ("%file%*.*") DO (
FOR %%g IN (%res%) DO (
 	set FND=Y
 	echo      found %%g
)

GOTO :eof

:REFX
REM echo %~n1
set FND=N
REM search in root directory for the original
FOR %%g IN (.\"%~n1*.*") DO (
	set FND=Y
)
REM maybe we have moved the orginal to the archive
FOR %%g IN (Archive\"%~n1*.*") DO (
	set FND=Y
)
FOR %%g IN (Private\"%~n1*.*") DO (
	set FND=Y
)

REM JPG is not found in DNG means it is an original
IF "%FND%"=="N" (
	echo copy %~n1.JPG ...
	REM copy .\Images\%~n1.JPG .
	REM Adobe DNG Converter .. JPG to DNG
	REM "C:\Program Files (x86)\Adobe\Adobe DNG Converter.exe" -c "%~n1.JPG"
)

GOTO :eof