# 🌐 Frutiger Aero Droid

> Bring back the glossy, vibrant, and skeuomorphic aesthetic of the 2000s (Windows 7 / iOS 6 / early Android) to your Android device!

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
├── windows.sh                   # Setup script for Windows (via ADB)
├── linux.sh                     # Setup script for Linux (via ADB)
├── macos.sh                     # Setup script for macOS (via ADB)
├── termux.sh                    # Setup script for Termux (directly on phone)
└── README.md
```

---

## 🚀 Quick Start & Installation

Download the repository as a **ZIP archive** (or clone it), extract it, and run the script for your platform:

### 📱 1. Android (Directly via Termux)
1. Open **Termux** and grant storage permissions:
   ```bash
   termux-setup-storage
   ```
2. Navigate to the extracted folder and run:
   ```bash
   bash termux.sh
   ```
*(Note: Install **Termux:API** if you want the script to automatically apply `default_wallpaper.jpg`).*

---

### 💻 2. PC / Laptop (via ADB)
Make sure **USB Debugging** is enabled in Developer Options on your phone and connect it via USB.

* **Windows (Windows Terminal / Git Bash):**
  ```bash
  bash windows.sh
  ```

* **Linux (Ubuntu, Debian, Arch, etc.):**
  ```bash
  chmod +x linux.sh
  ./linux.sh
  ```

* **macOS:**
  ```bash
  chmod +x macos.sh
  ./macos.sh
  ```

---

## 🎨 How to Apply Icons in Nova Launcher

Once the script finishes copying the files to `/sdcard/FrutigerAero/` and installing **Nova Launcher 6.0 Beta 12**:

1. Extract `aero_icons.zip` inside `/sdcard/FrutigerAero/Icons/` using your file manager.
2. Press and hold any app icon on your home screen (e.g., Camera, Phone, Browser).
3. Tap **Edit** (pencil icon) -> tap the **icon image** -> select **Gallery apps**.
4. Navigate to `FrutigerAero/Icons/` and pick the matching glossy icon!

---

## ✨ Features
- **Lightweight & Compatible:** Uses **Nova Launcher 6.0 Beta 12**, ensuring smooth performance even on legacy devices starting from **Android 5.0 (Lollipop)**.
- **All-in-One Archive:** Wallpapers, icons, and the launcher APK are bundled locally—no extra downloads required during installation.
- **Cross-Platform Setup:** Ready-to-use scripts for Windows, Linux, macOS, and Termux.

---

## 📜 License
Open-source project created for custom Android styling and Frutiger Aero enthusiasts.
