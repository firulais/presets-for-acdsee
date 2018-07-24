@setlocal enableextensions enabledelayedexpansion
@ECHO OFF

REM Import images from directory dropped to the .bat file.
REM .JPG => Images
REM .MOV => Video
REM .MP4 => Video	
REM .M4A => Audio
REM .CR2 => Raw
REM .NEF => Raw
	
set source="%~1"
ECHO import from %source% ...

set drive=%~d0

set folder1=%drive%\"Bilder"

mkdir %folder1% 2> NUL

FOR %%F IN ("%~1\*.cr2", "%~1\*.jpg", "%~1\*.mp4", "%~1\*.mov", "%~1\*.m4a") DO (
	set extension=%%~xF

	set datetime=%%~tF

	set day=!datetime:~0,2!
	set month=!datetime:~3,2!
	set year=!datetime:~6,4!

	set folder2=!folder1!\"Bilder !year!"
	mkdir !folder2! 2> NUL	
	
	set folder3=!folder2!\"!year!-!month!-!day!"
	mkdir !folder3! 2> NUL
	
	set target=!folder3!\"%%~nxF"	
	
	IF /I "!extension!"==".CR2" (
		set folder4=!folder3!\"Raw"
		mkdir !folder4! 2> NUL		
		set target=!folder4!\"%%~nxF"		
	)	
	IF /I "!extension!"==".NEF" (
		set folder4=!folder3!\"Raw"
		mkdir !folder4! 2> NUL		
		set target=!folder4!\"%%~nxF"		
	)		
	IF /I "!extension!"==".MOV" (
		set folder4=!folder3!\"Video"
		mkdir !folder4! 2> NUL		
		set target=!folder4!\"%%~nxF"		
	)
	IF /I "!extension!"==".MP4" (
		set folder4=!folder3!\"Video"
		mkdir !folder4! 2> NUL		
		set target=!folder4!\"%%~nxF"		
	)	
	IF /I "!extension!"==".M4A" (
		set folder4=!folder3!\"Audio"
		mkdir !folder4! 2> NUL
		set target=!folder4!\"%%~nxF"		
	)

	IF NOT EXIST !target! (
		ECHO ...process !target!
		COPY "%%~fF" !target!
	) ELSE (
		ECHO ...already exists !target!
	)
)
PAUSE

GOTO :eof


