#!/usr/bin/env bash

CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${CYAN}========================================${NC}"
echo -e "${CYAN}    Frutiger Aero Droid - Linux Setup   ${NC}"
echo -e "${CYAN}========================================${NC}"

if ! command -v adb &> /dev/null; then
    echo -e "${YELLOW}[!] Error: ADB is not installed!${NC}"
    echo -e "${YELLOW}[*] Install it using your package manager:${NC}"
    echo -e "    sudo apt install android-tools-adb  (Ubuntu/Debian)"
    echo -e "    sudo pacman -S android-tools        (Arch Linux)"
    exit 1
fi

echo -e "${CYAN}[*] Checking connected Android device...${NC}"
adb devices

echo -e "${GREEN}[+] Pushing wallpapers and icons to phone...${NC}"
adb shell "mkdir -p /sdcard/FrutigerAero/Wallpapers /sdcard/FrutigerAero/Icons"
adb push wallpapers/defaut_wallpaper.jpg /sdcard/FrutigerAero/Wallpapers/ 2>/dev/null
adb push icons/. /sdcard/FrutigerAero/Icons/ 2>/dev/null

if [ -f "launchers/nova_launcher.apk" ]; then
    echo -e "${GREEN}[+] Installing Nova Launcher from launchers/ folder...${NC}"
    adb install -r "launchers/nova_launcher.apk"
    
    echo -e "${CYAN}[*] Setting Nova Launcher as default home screen...${NC}"
    adb shell cmd package set-home-activity "com.teslacoilsw.launcher/.NovaLauncher"
else
    echo -e "${YELLOW}[!] nova_launcher.apk not found in launchers/ folder.${NC}"
fi

echo -e "${GREEN}[✓] Linux setup completed!${NC}"
