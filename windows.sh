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

echo -e "${CYAN}Select connection method:${NC}"
echo "1) USB Cable (USB Debugging)"
echo "2) Wi-Fi / Hotspot (Already paired or Port 5555)"
echo "3) Wi-Fi / Hotspot + First-Time Pairing (Android 11+ 6-digit code)"
read -p "Choose [1-3]: " CONN_MODE

if [ "$CONN_MODE" == "2" ]; then
    read -p "Enter Phone IP (e.g., 192.168.1.105 or 192.168.43.1:37845): " PHONE_IP
    [[ "$PHONE_IP" != *":"* ]] && PHONE_IP="$PHONE_IP:5555"
    echo -e "${CYAN}[*] Connecting to $PHONE_IP...${NC}"
    adb connect "$PHONE_IP"
    sleep 2

elif [ "$CONN_MODE" == "3" ]; then
    read -p "Enter Pairing IP:Port (shown in 'Pair device with pairing code'): " PAIR_ADDR
    read -p "Enter 6-digit Wi-Fi pairing code: " PAIR_CODE
    echo -e "${CYAN}[*] Pairing with $PAIR_ADDR...${NC}"
    adb pair "$PAIR_ADDR" "$PAIR_CODE"
    sleep 2

    read -p "Now enter main Wireless Debugging IP:Port: " PHONE_IP
    echo -e "${CYAN}[*] Connecting to $PHONE_IP...${NC}"
    adb connect "$PHONE_IP"
    sleep 2
fi

DEVICE_COUNT=$(adb devices | grep -w "device" | wc -l)
if [ "$DEVICE_COUNT" -eq 0 ]; then
    echo -e "${YELLOW}[!] No authorized Android device found! Check USB/Wi-Fi debugging and try again.${NC}"
    exit 1
fi

echo -e "${GREEN}[+] Device connected! Pushing wallpapers and icons...${NC}"
adb shell "mkdir -p /sdcard/FrutigerAero/Wallpapers /sdcard/FrutigerAero/Icons"
adb push wallpapers/default_wallpaper.jpg /sdcard/FrutigerAero/Wallpapers/ 2>/dev/null
adb push icons/. /sdcard/FrutigerAero/Icons/ 2>/dev/null

if [ -f "launchers/nova_launcher.apk" ]; then
    echo -e "${GREEN}[+] Installing Nova Launcher from launchers/ folder...${NC}"
    adb install -r "launchers/nova_launcher.apk"
    
    echo -e "${CYAN}[*] Setting Nova Launcher as default home screen...${NC}"
    adb shell cmd package set-home-activity "com.teslacoilsw.launcher/.NovaLauncher"
else
    echo -e "${YELLOW}[!] nova_launcher.apk not found in launchers/ folder.${NC}"
fi

if [ "$CONN_MODE" == "2" ] || [ "$CONN_MODE" == "3" ]; then
    adb disconnect "$PHONE_IP" > /dev/null
fi

echo -e "${GREEN}[✓] Windows setup completed!${NC}"
