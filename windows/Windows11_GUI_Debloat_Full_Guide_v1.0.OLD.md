# GUI-Only Windows 11 Debloat Guide  
**Applies To:** HP Elitebook 845 G7, Acer Nitro V 15, or any Windows 11 system  
**Method:** 100% GUI-based – no PowerShell, CMD, or Registry editing  
**Tools Used:** Settings, App Manager, Task Manager, official OEM utilities  

---

## ✅ Goals:
- Remove unnecessary bloatware
- Disable background resource hogs
- Prevent nagging ads and popups
- Preserve useful tools (like OEM drivers, support software)
- Improve boot speed, battery life, and performance

---

## 🧩 Step 1: Remove Unnecessary Apps

1. **Settings > Apps > Installed apps**
2. Sort by **Install date** or **Name**
3. Uninstall unused or unwanted apps:

Common removals:
- Microsoft OneDrive
- Microsoft News
- Microsoft To Do
- Microsoft Outlook
- Microsoft Teams
- Microsoft Clipchamp
- Xbox & Xbox Live
- Weather
- Power Automate
- Quick Assist
- Media Player (if using VLC)
- Mozilla Maintenance Service
- Feedback Hub (optional)
- Sound Recorder (if unused)

Keep if useful:
- HP Support Assistant / Acer NitroSense
- HP System Info / AMD Software / Audio Control
- Paint, [[REDACTED:serial]] Tool, Notepad, Photos (if preferred)
- Microsoft 365 Copilot (if used)
- Web Media Extensions (optional)
- PointStick or Touchpad software
- Windows Terminal

---

## 🧼 Step 2: Disable Background Apps

1. **Settings > Apps > Installed apps**
2. Click 3-dot menu > **Advanced options**
3. Set **Background app permissions** to **"Never"** for:
   - Paint
   - Photos
   - [[REDACTED:serial]] Tool
   - Sound Recorder
   - Web Media Extensions
   - ink.handwriting.main.store
   - Feedback Hub (if kept)

Leave enabled only for:
- Notepad (if using session restore)
- HP Audio Control / AMD audio
- OEM tools you actively use

---

## 🚀 Step 3: Startup App Cleanup

1. Open **Task Manager**
   - Right-click Taskbar > **Task Manager**
2. Go to **Startup apps** tab
3. Right-click > **Disable** unneeded apps:

Common safe disables:
- HP QuickDrop / Acer Bloat
- Skype
- Feedback Hub
- Adobe updaters
- Gaming launchers (if not daily)

Keep enabled:
- Windows Security
- Audio drivers (Realtek, AMD)
- HP Hotkey support / Acer function keys
- VPN or system tools

---

## 🔕 Step 4: Disable Ads & Notifications

### Notifications
- **Settings > System > Notifications**
- Uncheck:
  - "Offer suggestions on how I can set up my device"
  - "Get tips and suggestions when I use Windows"

### Start Menu
- **Settings > Personalization > Start**
- Toggle off:
  - Show recently added apps
  - Show most used apps
  - Show recommendations...

(✅ Leave "recent files" on if preferred)

### Lock Screen
- **Settings > Personalization > Lock screen**
- Set background to **Picture** or **Slideshow**
- Turn off:
  - "Get fun facts, tips, tricks, and more on your lock screen"

### Settings Ads
- **Settings > Privacy & security > General**
- Turn off:
  - "Show me suggested content in the Settings app"

---

## 🏁 Done!

Your system is now:
- Bloat-free
- Quiet
- Efficient
- Still fully supported
- Replicable across other Windows 11 devices

Use this checklist on future machines or revisions.

