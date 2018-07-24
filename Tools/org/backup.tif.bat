@ECHO OFF

REM Create for every "orignal" jpg a tif file.
REM version 1.1
REM version 1.2 EXIF

REM C:\Program Files\ImageMagick-6.8.8-Q16\convert.exe

FOR %%f IN (*.jpg) DO (
	IF NOT EXIST "%%~nf.tif" (
		ECHO process "%%~nf.jpg" ...
		
		REM !!! CAUTION: EXIF is not preserved from jpg to png
		REM convert -compress none "%%~nf.jpg" tif:"%%~nf.png"
		
		REM convert "%%~nf.jpg" exif:"%%~nf.exif"
		
		REM !!! CAUTION: EXIF is not preserved from jpg to tif
		REM if needed create a seperate "exif".xml file.
		convert "%%~nf.jpg" tif:"%%~nf.tif"
		REM convert -compress none "%%~nf.jpg" tif:"%%~nf.tif"
		REM convert -compress none -define tiff:exif=true -define tiff:ignore-exif=false "%%~nf.jpg" tif:"%%~nf.tif"
		REM exiftool -tagsFromFile "%%~nf.jpg" -All:All --IFD1:All "%%~nf.tif"
		
		REM call convert -compress ZIP "%%~nf.jpg" tif:"%%~nf.zip.tif"
		REM call mogrify -format tif *.jpg
		
		REM IF EXIST "%%~nf.tif" del "%%~nf.jpg"
	)
)
PAUSE

GOTO :eof


