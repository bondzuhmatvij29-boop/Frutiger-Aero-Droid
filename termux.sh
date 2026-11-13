#!/data/data/com.termux/files/usr/bin/bash

CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${CYAN}========================================${NC}"
echo -e "${CYAN}   Frutiger Aero Droid - Termux Setup   ${NC}"
echo -e "${CYAN}========================================${NC}"

termux-setup-storage

TARGET_DIR="/sdcard/FrutigerAero"
mkdir -p "$TARGET_DIR/Wallpapers" "$TARGET_DIR/Icons" "$TARGET_DIR/Launchers"

echo -e "${GREEN}[+] Copying wallpapers, icons, and launcher...${NC}"
cp -r wallpapers/* "$TARGET_DIR/Wallpapers/" 2>/dev/null
cp -r icons/* "$TARGET_DIR/Icons/" 2>/dev/null
cp -r launchers/* "$TARGET_DIR/Launchers/" 2>/dev/null

# Встановлення Nova Launcher прямо з папки launchers/
LAUNCHER_APK="$TARGET_DIR/Launchers/nova_launcher.apk"
if [ -f "$LAUNCHER_APK" ]; then
    echo -e "${GREEN}[+] Installing Nova Launcher...${NC}"
    termux-open "$LAUNCHER_APK"
else
    echo -e "${YELLOW}[!] nova_launcher.apk not found in launchers/ folder.${NC}"
fi

# Встановлення шпалер
WALLPAPER_PATH="$TARGET_DIR/Wallpapers/defaut_wallpaper.jpg"
if [ -f "$WALLPAPER_PATH" ] && command -v termux-wallpaper &> /dev/null; then
    echo -e "${CYAN}[*] Setting default_wallpaper.jpg...${NC}"
    termux-wallpaper -f "$WALLPAPER_PATH"
fi

echo -e "${GREEN}[✓] Setup completed!${NC}"
