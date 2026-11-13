#!/usr/bin/env bash

CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${CYAN}========================================${NC}"
echo -e "${CYAN}   Frutiger Aero Droid - Windows Setup  ${NC}"
echo -e "${CYAN}========================================${NC}"

if ! command -v adb &> /dev/null; then
    echo -e "${YELLOW}[!] Error: ADB is not installed or not added to PATH!${NC}"
    exit 1
fi

echo -e "${CYAN}[*] Checking connected Android device...${NC}"
adb devices

echo -e "${GREEN}[+] Pushing files to phone via ADB (/sdcard/FrutigerAero)...${NC}"
adb shell "mkdir -p /sdcard/FrutigerAero/Wallpapers /sdcard/FrutigerAero/Icons /sdcard/FrutigerAero/Launchers"

adb push wallpapers/defaut_wallpaper.jpg /sdcard/FrutigerAero/Wallpapers/ 2>/dev/null
adb push icons/. /sdcard/FrutigerAero/Icons/ 2>/dev/null
adb push launchers/. /sdcard/FrutigerAero/Launchers/ 2>/dev/null

echo -e "${GREEN}[✓] Windows ADB setup completed successfully!${NC}"
