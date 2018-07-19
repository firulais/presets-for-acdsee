set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%
set year=%date:~-4%
REM set month=%date:~4,2%
set month=%date:~3,2%
if "%month:~0,1%" == " " set month=0%month:~1,1%
set day=%date:~0,2%
if "%day:~0,1%" == " " set day=0%day:~1,1%

set mydate=%year%%month%%day%_%hour%%min%%secs%

REM cd %Userprofile%\desktop
reg export "HKCU\Software\ACD Systems\EditLib\Version 1.0\Develop\Presets" presets_all_%mydate%.reg
pause
