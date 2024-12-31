@echo off
setlocal

REM Get the directory of the batch file
set SCRIPT_DIR=%~dp0

REM Define possible paths for msedge.exe
set EDGE_PATH1="C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
set EDGE_PATH2="C:\Program Files\Microsoft\Edge\Application\msedge.exe"

REM Check if msedge.exe exists in the first path
if exist %EDGE_PATH1% (
    set EDGE_PATH=%EDGE_PATH1%
) else (
    REM Check if msedge.exe exists in the second path
    if exist %EDGE_PATH2% (
        set EDGE_PATH=%EDGE_PATH2%
    ) else (
        echo Microsoft Edge is not installed in the default paths.
        echo Please install Microsoft Edge or update the script with the correct path.
        pause
        endlocal
        exit /b
    )
)

REM Run Microsoft Edge in kiosk mode with the index.html file and disable translation
%EDGE_PATH% --kiosk "%SCRIPT_DIR%index.html" --edge-kiosk-type=fullscreen --disable-features=Translate

endlocal