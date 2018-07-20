@ECHO OFF
setlocal enabledelayedexpansion

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

for /f "tokens=*" %%G in ('REG QUERY "HKEY_CURRENT_USER\Software\ACD Systems\EditLib\Version 1.0\Develop\Presets\Group"') do (
	@echo path: %%G
	
	for /f "tokens=*" %%B in ('echo %%G') do (
		set group=%%~nB
	)
	@echo group: !group!	
		
	for /f "tokens=*" %%R in ('REG QUERY "%%G"') do (
		for /f "tokens=*" %%A in ('echo %%R') do (
			set preset=%%~nA
		)
		@echo preset: !preset!
		
		mkdir Group 2> NUL
		mkdir Group\"!group!" 2> NUL
		@echo Presets for !group!> "Group\!group!\README.md" 2> NUL
		reg export "%%R" "Group\!group!\Group_!group!_!preset!.reg" /y
	)

)

pause
