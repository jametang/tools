@echo off

:: Set APK path
set APK_PATH=%~1

echo Installing: %APK_PATH%
adb install -r "%APK_PATH%"

:: Check for installation errors
if %errorlevel% neq 0 (
    echo Installation failed. Please check device connection.
) else (
    echo Installation successful.
)

pause