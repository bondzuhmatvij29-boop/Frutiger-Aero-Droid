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
├── windows.sh                   # Setup script for Windows (via ADB)
├── linux.sh                     # Setup script for Linux (via ADB)
├── macos.sh                     # Setup script for macOS (via ADB)
└── README.md
```

---

## 🚀 Quick Start & Installation

Download the repository as a **ZIP archive** (or clone it), extract it, and choose your preferred installation method:

### 💻 1. Automatic Setup via PC (ADB)
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
- **Cross-Platform ADB Scripts:** One-click automated deployment from Windows, Linux, and macOS.

---

## 📜 License
Open-source project created for custom Android styling and Frutiger Aero enthusiasts.
