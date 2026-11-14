@echo off
chcp 65001 >nul
title Frutiger Aero Droid - Windows Installer
color 1F

set ADB_PATH=adb\adb.exe

:MENU
cls
echo ========================================================
echo       FRUTIGER AERO DROID - AUTOMATION TOOL
echo       GitHub: github.com/bondzuhmatvij29-boop/Frutiger-Aero-Droid
echo ========================================================
echo.
echo [1] Check device connection (ADB)
echo [2] Install backup and apps to phone
echo [3] Open GitHub repository page
echo [4] Exit
echo.
set /p choice="Select an option (1-4): "

if "%choice%"=="1" goto CHECK_ADB
if "%choice%"=="2" goto INSTALL_ALL
if "%choice%"=="3" goto OPEN_GITHUB
if "%choice%"=="4" exit

goto MENU

:CHECK_ADB
cls
echo [*] Searching for connected Android devices...
echo.
if exist "%ADB_PATH%" (
    %ADB_PATH% devices
) else (
    echo [!] Error: adb.exe not found in the "adb" folder!
)
echo.
echo --------------------------------------------------------
echo Press any key to return to the main menu...
pause >nul
goto MENU

:INSTALL_ALL
cls
echo [*] Checking connection to the phone...
if not exist "%ADB_PATH%" (
    echo [!] ERROR: adb\adb.exe is missing!
    goto PAUSE_MENU
)

%ADB_PATH% get-state >nul 2>&1
if errorlevel 1 (
    echo.
    echo [!] ERROR: Device not found!
    echo Please make sure "USB Debugging" is enabled
    echo in Developer Options on your Android device.
    goto PAUSE_MENU
)

echo [+] Device connected successfully!
echo.
echo [*] Copying aero.novabackup to phone storage...
if exist "aero.novabackup" (
    %ADB_PATH% push aero.novabackup /sdcard/Download/
    echo [+] Backup successfully copied to the Download folder!
) else (
    echo [!] Warning: aero.novabackup not found.
)

if exist "nova.apk" (
    echo [*] Installing Nova Launcher...
    %ADB_PATH% install nova.apk
    echo [+] Launcher installed successfully!
) else (
    echo [i] Tip: Place nova.apk in the root folder to install it automatically.
)

echo.
:PAUSE_MENU
echo ========================================================
echo [DONE] Open Nova Launcher on your phone, go to
echo Backup & Import Settings, and restore "aero.novabackup".
echo ========================================================
echo.
echo Press any key to return to the main menu...
pause >nul
goto MENU

:OPEN_GITHUB
start https://github.com/bondzuhmatvij29-boop/Frutiger-Aero-Droid.git
goto MENU
