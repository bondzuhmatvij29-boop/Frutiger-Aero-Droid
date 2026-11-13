#!/usr/bin/env bash

CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${CYAN}========================================${NC}"
echo -e "${CYAN}    Frutiger Aero Droid - Linux Setup   ${NC}"
echo -e "${CYAN}========================================${NC}"

# Перевірка наявності ADB
if ! command -v adb &> /dev/null; then
    echo -e "${YELLOW}[!] Error: ADB is not installed!${NC}"
    echo -e "${YELLOW}[*] Install it using your package manager, for example:${NC}"
    echo -e "    sudo apt install android-tools-adb  (Ubuntu/Debian)"
    echo -e "    sudo pacman -S android-tools        (Arch Linux)"
    exit 1
fi

echo -e "${CYAN}[*] Checking connected Android device...${NC}"
adb devices

echo -e "${GREEN}[+] Pushing files to phone via ADB (/sdcard/FrutigerAero)...${NC}"
adb shell "mkdir -p /sdcard/FrutigerAero/Wallpapers /sdcard/FrutigerAero/Icons /sdcard/FrutigerAero/Launchers"

# Перенесення файлів з ПК на телефон
adb push wallpapers/defaut_wallpaper.jpg /sdcard/FrutigerAero/Wallpapers/ 2>/dev/null
adb push icons/. /sdcard/FrutigerAero/Icons/ 2>/dev/null
adb push launchers/. /sdcard/FrutigerAero/Launchers/ 2>/dev/null

echo -e "${GREEN}[✓] Linux ADB setup completed successfully!${NC}"
