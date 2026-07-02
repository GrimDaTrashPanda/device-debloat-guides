# GUI-Only Windows 11 Debloat Guide  
**Device:** HP EliteBook 845 G7  
**Method:** 100% GUI-based – no PowerShell, CMD, or Registry editing  
**Tools Used:** Settings, App Manager, Task Manager, official HP software  

---

## ✅ Objectives:
- Remove unnecessary bloatware
- Disable background apps
- Improve performance and startup speed
- Retain useful OEM tools (like HP Support Assistant)

---

## 📋 Step-by-Step Process  
Each step is completed one at a time with confirmation.

---

## ✅ Step 1: Remove Unnecessary Apps (Completed)

Apps safely removed:
- Microsoft OneDrive
- Microsoft News
- Microsoft To Do
- Microsoft Outlook
- Microsoft Teams
- Microsoft Clipchamp
- Weather
- Xbox + Xbox Live
- Mozilla Maintenance Service
- Power Automate
- Quick Assist
- Media Player

Apps kept:
- [[REDACTED:serial]] Tool
- Photos (background disabled)
- Paint (background disabled)
- Notepad
- Windows Terminal
- PointStick Settings
- Web Media Extensions (background disabled)
- Sound Recorder (background disabled)
- Microsoft 365 Copilot
- Feedback Hub (optional)
- Microsoft Bing Search (non-removable)
- HP Support Assistant
- HP System Information
- HP Audio Control
- ink.handwriting.main.store (background disabled)

---

## ✅ Step 2: Disable Background Apps (Completed)

Apps with background permissions set to "Never":
- [[REDACTED:serial]] Tool
- Paint
- Photos
- Sound Recorder
- Web Media Extensions
- ink.handwriting.main.store

Apps left alone:
- Notepad (to retain tab/session restore)
- HP Audio Control (to preserve audio optimization)
- HP Support Assistant (optional)
- Microsoft 365 Copilot (occasionally used)

---

## ✅ Step 3: Startup App Cleanup (Completed)

Disabled via Task Manager:
- HP QuickDrop
- Skype (if installed)
- Feedback Hub (if still present)
- Media tools, third-party launchers, and others not needed

Left enabled:
- Input device support (PointStick, touchpad, hotkeys)
- Audio drivers (Realtek, Bang & Olufsen)
- Windows Security
- HP Support Assistant (optional)
- VPN/Security tools (if applicable)

---

## 🔹 Step 4: Notifications & Ads Cleanup

### 1. Turn Off Windows Tips and Ads

**Settings > System > Notifications**

- Scroll down and **uncheck**:
  - ✔️ “Offer suggestions on how I can set up my device”
  - ✔️ “Get tips and suggestions when I use Windows”

---

### 2. Remove Ads from Start Menu

**Settings > Personalization > Start**

- Toggle off:
  - ✔️ “Show recently added apps”
  - ✔️ “Show most used apps”
  - ✔️ “Show recommendations for tips, shortcuts, new apps, and more”

---

### 3. Disable Lock Screen Ads

**Settings > Personalization > Lock screen**

- Set **Background** to **Picture** or **Slideshow**
- Toggle off:
  - ✔️ “Get fun facts, tips, tricks, and more on your lock screen”

---

### 4. Disable Suggested Content in Settings App

**Settings > Privacy & security > General**

- Toggle off:
  - ✔️ “Show me suggested content in the Settings app”

---

Once complete, Windows will stop promoting Microsoft services and cluttering your workflow with ads and suggestions.
