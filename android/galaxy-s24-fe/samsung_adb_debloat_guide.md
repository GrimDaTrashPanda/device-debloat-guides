
KB: Samsung ADB Debloat Guide (Repeatable)

✅ Prerequisites
- Windows PC
- Samsung phone with USB debugging enabled
- Samsung drivers or Android Platform Tools installed
- USB cable

⚙️ Enable Developer & USB Debugging on phone
1. Settings → About phone → Software information → Tap Build number 7 times.
2. Back to Settings → Developer options → Enable USB debugging.

💻 Prepare PC (first time only)
1. Download platform-tools (Android SDK Platform Tools) if not already installed.
2. Unzip to a folder (example: C:\Users\YourName\Desktop\platform-tools).

🔌 Connect phone
- Plug phone into PC.
- Tap Allow on any "Allow USB debugging?" pop-up.

💬 Open PowerShell in platform-tools folder
1. Go to your platform-tools folder.
2. Hold Shift and right-click on empty space.
3. Select Open PowerShell window here.

✅ Check device connection
In PowerShell, type:
.db devices

- You should see your device listed (e.g., R5CYxxxx device).

💣 Run one-shot debloat commands
Copy and paste this full block into PowerShell and press Enter:

.db shell pm uninstall --user 0 com.facebook.appmanager; `
.db shell pm uninstall --user 0 com.facebook.services; `
.db shell pm uninstall --user 0 com.facebook.system; `
.db shell pm uninstall --user 0 com.samsung.android.app.clipboardedge; `
.db shell pm uninstall --user 0 com.samsung.android.app.omcagent; `
.db shell pm uninstall --user 0 com.samsung.android.app.taskedge; `
.db shell pm uninstall --user 0 com.samsung.android.bixby.agent; `
.db shell pm uninstall --user 0 com.samsung.android.bixby.wakeup; `
.db shell pm uninstall --user 0 com.samsung.android.bixbyvision.framework; `
.db shell pm uninstall --user 0 com.samsung.android.fmm; `
.db shell pm uninstall --user 0 com.samsung.android.forest; `
.db shell pm uninstall --user 0 com.samsung.android.game.gametools; `
.db shell pm uninstall --user 0 com.samsung.android.game.gos; `
.db shell pm uninstall --user 0 com.samsung.android.kidsinstaller; `
.db shell pm uninstall --user 0 com.samsung.android.scloud; `
.db shell pm uninstall --user 0 com.samsung.android.smartcallprovider; `
.db shell pm uninstall --user 0 com.samsung.android.spayfw; `
.db shell pm uninstall --user 0 com.samsung.android.stickercenter; `
.db shell pm uninstall --user 0 com.samsung.android.visionintelligence; `
.db shell pm uninstall --user 0 com.sec.android.app.sbrowser; `
.db shell pm uninstall --user 0 com.sec.android.diagmonagent

💬 Expected output
- Success → Package removed for user 0.
- Failure [not installed for 0] → Already gone.
- Failure [DELETE_FAILED_OWNER_BLOCKED] → System-protected, ignore.

🧹 Done
- Disconnect cable.
- Reboot phone if you like (optional).

💡 Key reminders
- If you see "not installed for 0," it means your debloat stuck from last time.
- Copy-paste always works — just make sure you run from platform-tools and use .\ prefix.

✅ Future runs
→ Just follow these same steps. Copy this guide. Done.
