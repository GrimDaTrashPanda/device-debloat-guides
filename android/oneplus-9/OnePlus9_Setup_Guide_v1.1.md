
# OnePlus 9: First-Time Setup and OTA Restoration Guide (v1.1)

## Objective
This guide outlines how to update a OnePlus 9 from its untouched factory OS (likely Android 11 or early 12) to OxygenOS 13,
restoring full OTA update functionality using the Oxygen Updater app. No sideloading, bootloader unlock, or command-line tools required.

---

## Prerequisites
- **Device**: OnePlus 9 (factory OS, never updated)
- **Status**: OTA non-functional or unavailable
- **Network**: Connected to Wi-Fi
- **Google Account**: Signed in (restore skipped)
- **Battery**: At least 30% before installing updates

---

## Procedure

### 1. Initial Setup (OxygenOS 11/12 differences noted)

- **Power On** the device.
- **Connect to Wi-Fi** during setup.
- **Skip Google Restore** (tap "Don't copy" if asked).
- **Complete Onboarding**:
  - Do **not** sign in to a OnePlus account.
  - **Decline Privacy Password setup**.
- **Verify OS Version**:
  - On **Android 11**: `Settings > About Phone > OxygenOS Version`
  - On **Android 12/13**: `Settings > About Device > Android Version`

---

### 2. Install Oxygen Updater

- Open **Google Play Store**.
- Search and install: **Oxygen Updater**
- Launch the app and grant permissions.
- App should auto-detect **OnePlus 9**.
- In the app:
  - Go to **Settings (top right gear icon)**
  - Set **Update Method** to: `Full Update`
- Download the latest OxygenOS version available (usually OOS 12.x)

---

### 3. Install Update via Local Upgrade

- Open **File Manager** (or use "Files" app).
- Ensure the downloaded file is named: `update.zip`
- Move `update.zip` to **root of internal storage** (not inside any folders)

#### Enable Developer Options:
- Go to `Settings > About Device`
- Tap **Build Number** 7 times
- Go to `Settings > System > Developer Options`

#### Perform Local Upgrade:
- Go to:
  - **Android 11/12**: `Settings > System > System Updates > Gear Icon > Local Upgrade`
  - **Android 13**: `Settings > About Device > Up to date > Tap 3 dots > Local Install`
- Select `update.zip`
- Confirm installation
- Device reboots and installs the package

> **Fallback**: If Local Upgrade option does not appear, reboot once and recheck. Otherwise, open **Oxygen Updater** again and re-download package.

---

### 4. Restore Full OTA Update Support

- After rebooting into **OxygenOS 12**:
  - Go to `Settings > System > System Updates`
  - The updater will now function normally
- Download and install OTA for **OxygenOS 13**

---

### 5. (Optional) Upgrade to OxygenOS 14

- If staying stock, allow OTA to offer OOS 14
- To force it:
  - Open Oxygen Updater again
  - Download latest **Full update for OxygenOS 14**
  - Repeat Local Upgrade process

---

## Outcome

- OnePlus 9 is now running OxygenOS 13 (or 14 optionally)
- OTA functionality is restored
- Google Play Store and sync work as expected
- No bootloader unlock, sideloading, or ADB required

---

## Troubleshooting Tips

- **Local Upgrade option missing?** Restart device or try re-downloading from Oxygen Updater
- **File not detected?** Ensure it's named exactly `update.zip` and placed in root directory
- **Play Store acting slow or not updating?**
  - Go to `Settings > Apps > Play Store > Storage & Cache > Clear both`
  - Then open Play Store > Profile > Settings > About > Tap Play Store version to force update check

---

## Notes

- This guide is fully repeatable for additional OnePlus 9 units
- Great for testing differences between Android 13 vs. 14 behavior
- Useful for stock vs. de-Googled experimentation

