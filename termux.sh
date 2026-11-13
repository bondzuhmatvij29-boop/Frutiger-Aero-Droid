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
mkdir -p "$TARGET_DIR/Wallpapers"
mkdir -p "$TARGET_DIR/Icons"
mkdir -p "$TARGET_DIR/Launchers"

echo -e "${GREEN}[+] Copying files to $TARGET_DIR...${NC}"
cp -r wallpapers/* "$TARGET_DIR/Wallpapers/" 2>/dev/null
cp -r icons/* "$TARGET_DIR/Icons/" 2>/dev/null
cp -r launchers/* "$TARGET_DIR/Launchers/" 2>/dev/null

WALLPAPER_PATH="$TARGET_DIR/Wallpapers/defaut_wallpaper.jpg"

if [ -f "$WALLPAPER_PATH" ]; then
    if command -v termux-wallpaper &> /dev/null; then
        echo -e "${CYAN}[*] Setting default_wallpaper.jpg...${NC}"
        termux-wallpaper -f "$WALLPAPER_PATH"
    else
        echo -e "${YELLOW}[!] Install termux-api to apply wallpaper automatically.${NC}"
    fi
else
    echo -e "${YELLOW}[!] default_wallpaper.jpg not found.${NC}"
fi

echo -e "${GREEN}[✓] Setup completed successfully!${NC}"
