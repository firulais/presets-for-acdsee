@echo off
:: variables

REM Copy the Images from SD card to the foto archive.
REM version 2.0

set backupcmd=xcopy /s /c /d /e /h /i /r /y

echo ### backup images 100
REM %backupcmd% "D:\DCIM\100NCD90\*.JPG" "E:\100NCD90" >> backup.log
REM %backupcmd% "D:\DCIM\100NCD90\*.NEF" "E:\100NCD90\Raw" >> backup.log

echo ### backup images 101
REM %backupcmd% "D:\DCIM\101NCD90\*.JPG" "E:\101NCD90" >> backup.log
REM %backupcmd% "D:\DCIM\101NCD90\*.NEF" "E:\101NCD90\Raw" >> backup.log

REM echo ### backup images 102
REM %backupcmd% "D:\DCIM\102NCD90\*.JPG" "E:\102NCD90" >> backup.log
REM echo ### backup images 102 Raw
REM %backupcmd% "D:\DCIM\102NCD90\*.NEF" "E:\102NCD90\Raw" >> backup.log

echo ### backup images 103
REM %backupcmd% "D:\DCIM\103NCD90\*.JPG" "E:\103NCD90" >> backup.log
REM echo ### backup images 103 Raw
REM %backupcmd% "D:\DCIM\103NCD90\*.NEF" "E:\103NCD90\Raw" >> backup.log

echo ### backup images 104
%backupcmd% "H:\DCIM\104NCD90\*.JPG" "G:\104NCD90" >> backup.log
echo ### backup images 104 Raw
%backupcmd% "H:\DCIM\104NCD90\*.NEF" "G:\104NCD90\Raw" >> backup.log

echo ### backup images 105
%backupcmd% "H:\DCIM\105NCD90\*.JPG" "G:\105NCD90" >> backup.log
REM echo ### backup images 104 Raw
%backupcmd% "H:\DCIM\105NCD90\*.NEF" "G:\105NCD90\Raw" >> backup.log

REM echo ### backup images 199
REM %backupcmd% "D:\DCIM\199NCD90\*.JPG" "E:\199NCD90" >> backup.log
REM %backupcmd% "D:\DCIM\199NCD90\*.NEF" "E:\199NCD90\Raw" >> backup.log

REM echo ### backup images 100
REM %backupcmd% "Equipo\Canon PowerShot G7 X Mark II\SD\DCIM\100___07" F:\DCIM\100___07

REM echo ### backup images 101
REM %backupcmd% "Equipo\Canon PowerShot G7 X Mark II\SD\DCIM\101___07" F:\DCIM\101___07

pause