@ECHO OFF
setlocal enabledelayedexpansion
REM REG EXPORT "%%b" "%%b.reg"
REM REG QUERY "HKCU\Software\ACD Systems\EditLib\Version 1.0\Develop\Presets\Global" /s > test.reg
REM FOR /F "tokens=2*" %%a in ('REG QUERY "HKCU\Software\ACD Systems\EditLib\Version 1.0\Develop\Presets\Global"') DO @ECHO "%%a.reg"

for /f "tokens=*" %%R in ('REG QUERY "HKCU\Software\ACD Systems\EditLib\Version 1.0\Develop\Presets\Global"') do (
	for /f "tokens=*" %%A in ('echo %%R') do (
		set file=%%~nA.reg
	)
	@echo !file!
	REM reg export "%%R" !file!
)

PAUSE
