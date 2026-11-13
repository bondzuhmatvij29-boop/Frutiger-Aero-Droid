# 🌐 Frutiger Aero Droid

> Bring back the glossy, vibrant, and skeuomorphic aesthetic of the 2000s (Windows 7 / iOS 6 / early Android) to your modern Android device!

---

## 📂 Project Structure

```text
Frutiger-Aero-Droid/
├── wallpapers/
│   └── default_wallpaper.jpg    # Classic glossy Frutiger Aero wallpaper
├── icons/
│   └── aero_icons.zip           # Frutiger Aero app icon pack
├── launchers/
│   └── nova_launcher.apk        # Nova Launcher v6.0 Beta 12 (Android 5.0+)
├── windows.sh                   # Setup script for Windows (USB & Wi-Fi ADB)
├── linux.sh                     # Setup script for Linux (USB & Wi-Fi ADB)
├── macos.sh                     # Setup script for macOS (USB & Wi-Fi ADB)
└── README.md
```

---

## 🚀 Quick Start & Installation

Download the repository as a **ZIP archive** (or clone it), extract it, and choose your preferred installation method:

### 💻 1. Automatic Setup via PC (USB or Wi-Fi / Hotspot)
Enable **USB Debugging** (and **Install via USB** on Xiaomi/MIUI devices) in Developer Options.

Run the script for your OS:
* **Windows (Windows Terminal / Git Bash):** `bash windows.sh`
* **Linux:** `chmod +x linux.sh && ./linux.sh`
* **macOS:** `chmod +x macos.sh && ./macos.sh`

**Choose one of 3 connection modes in the terminal:**
1. **USB Cable:** Connect your phone via USB and allow debugging on the screen.
2. **Wi-Fi / Hotspot (Direct IP):** Connect your PC and phone to the same Wi-Fi or mobile hotspot, and enter your phone's IP address (defaults to port `5555` if no port is specified).
3. **Wi-Fi / Hotspot + First-Time Pairing (Android 11+):** Open *Developer Options -> Wireless Debugging -> Pair device with pairing code*, and enter the pairing IP:Port + 6-digit code directly in the script.

---

### 📱 2. Manual Setup (Directly on Android)
If you don't have a PC nearby, you can set everything up manually in under a minute:

1. Extract the downloaded repository archive on your phone.
2. Open the `launchers/` folder and install **`nova_launcher.apk`**.
3. Open the `wallpapers/` folder and set **`default_wallpaper.jpg`** as your home screen wallpaper.
4. Extract **`aero_icons.zip`** from the `icons/` folder.

---

## 🎨 How to Apply Icons in Nova Launcher

Once **Nova Launcher 6.0 Beta 12** is installed and set as your default home screen:

1. Press and hold any app icon on your home screen (e.g., Camera, Phone, Browser).
2. Tap **Edit** (pencil icon) -> tap the **icon image** -> select **Gallery apps**.
3. Navigate to your extracted `icons/` folder and pick the matching glossy icon!

---

## ✨ Features
- **Lightweight & Compatible:** Uses **Nova Launcher 6.0 Beta 12**, ensuring smooth performance even on legacy devices starting from **Android 5.0 (Lollipop)**.
- **All-in-One Archive:** Wallpapers, icons, and the launcher APK are bundled locally—no extra downloads required during installation.
- **USB & Wireless ADB Support:** Deploy effortlessly over USB cable, local Wi-Fi, or mobile hotspot with built-in Android 11+ pairing support.

---

## 📜 License
Open-source project created for custom Android styling and Frutiger Aero enthusiasts.
