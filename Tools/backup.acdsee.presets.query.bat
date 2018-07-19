@ECHO OFF
setlocal enabledelayedexpansion

for /f "tokens=*" %%R in ('REG QUERY "HKCU\Software\ACD Systems\EditLib\Version 1.0\Develop\Presets\Global"') do (
	for /f "tokens=*" %%A in ('echo %%R') do (
		set file=%%~nA.reg
	)
	@echo !file!
	REM reg export "%%R" !file!
)

PAUSE
