REM Create for every raw (.nef, .cr2) a DNG file.
REM Install the Adobe Digital Negative Converter (DNG) first.
REM https://helpx.adobe.com/de/photoshop/using/adobe-dng-converter.html
REM Workflow:
REM - Plug in memory card
REM - Open DNG Converter
REM - Select files
REM - Convert to DNG, save onto local drive
REM - Open converted files in ACDSee

REM "C:\Program Files (x86)\Adobe\Adobe DNG Converter.exe" -d G:\CanonG7\2016-07-12
FOR %%a IN (G:\CanonG7\2016-07-12\*.cr2) DO "C:\Program Files (x86)\Adobe\Adobe DNG Converter.exe" -c "%%a" 

FOR %%a IN (G:\CanonG7\2016-07-12\*.nef) DO "C:\Program Files (x86)\Adobe\Adobe DNG Converter.exe" -c "%%a" 

pause