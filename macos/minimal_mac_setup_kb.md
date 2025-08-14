
Minimal Local-Only macOS Setup (No iCloud, No Bloat, No Tracking)
Tested on: 2017 MacBook Air | Reusable for 2020 Intel & M1 MacBooks

Purpose
Set up macOS in a clean, secure, local-only configuration—no Apple ID, no iCloud, no Siri, no background tracking.

Before You Begin
- Device must be erased or newly set up
- Keep Wi-Fi disconnected until prompted
- No Apple ID required for this process

1. Initial Setup (Offline Mode)
- At “How Do You Connect?” screen, choose:
  → “My computer does not connect to the Internet”
- Continue setup offline
- Create a local user account when prompted

2. Skip All Cloud-Based Features
When prompted:
- Skip Siri
- Skip Screen Time (click “Set Up Later”)
- Skip Analytics, Location Services, and Apple personalization
  - You can re-enable Location later if needed

3. Post-Setup System Configuration
After booting to the desktop:

Security & Privacy Settings
- Go to System Preferences > Security & Privacy > General
  - Require password immediately
  - Disable automatic login
  - Allow apps from App Store and Identified Developers
- Click the lock icon to prevent future changes

Software Updates
- Go to System Preferences > Software Update > Advanced
  - Check for updates
  - Download new updates
  - [Optional] Install macOS updates automatically
  - Install system data files and security updates
  - Install App Store app updates (if applicable)

4. Clean Dock and App Bloat
- Right-click or Control+click on Dock apps > Options > Remove from Dock
- Go to System Preferences > Dock & Menu Bar
  - Enable “Automatically hide and show the Dock” (optional)
  - Set minimize windows to “scale effect” for speed

5. Login Items & Startup Behavior
- System Preferences > Users & Groups > Login Items
  - Remove anything listed—keep it clean

6. Turn Off Siri & Dictation
- System Preferences > Siri
  - Uncheck “Enable Ask Siri”
- Keyboard > Dictation → Turn Off

7. Privacy Settings
- System Preferences > Security & Privacy > Privacy tab
  - Analytics & Improvements → Uncheck all
  - Location Services → Leave off or customize later

8. Optional Final Tweaks
- Set a dark wallpaper for aesthetics + battery
- System Preferences > Mission Control > Hot Corners
  → Configure for things like Desktop, Lock Screen, or Mission Control
- System Preferences > Notifications → Disable noisy apps
- System Preferences > Sharing → Make sure everything is OFF

9. (When Connected to Internet)
Install optional trusted tools:
- Brave or Firefox (secure browser)
- AppCleaner (safe app removal)
- Rectangle (window [[REDACTED:serial]])
- KeepassXC (offline password manager)
- LibreOffice (FOSS Office suite)

10. Optional Encryption
Enable FileVault from System Preferences > Security & Privacy > FileVault if desired for full-disk encryption.

11. Optional Backup
Use Time Machine or manual folder backup to external drive

Notes for Future Devices
- macOS Monterey and later may push you harder toward Apple ID login—but local account creation is still possible offline
- On M1/M2 Macs: hold Power button during boot to enter Recovery for erasing/reinstalling macOS
