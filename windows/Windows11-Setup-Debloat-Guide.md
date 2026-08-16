# Windows 11 Setup & Debloat Guide

> Fresh-install checklist through full debloat — GUI-only, any device
> No PowerShell · No registry edits · No scripts · Fully reversible

---

## Table of Contents

1. [Overview](#1-overview)
2. [Phase 1: Fresh Install](#2-phase-1-fresh-install)
3. [Phase 2: Out-of-Box Setup (OOBE)](#3-phase-2-out-of-box-setup-oobe)
4. [Phase 3: First-Boot Privacy & Notification Cleanup](#4-phase-3-first-boot-privacy--notification-cleanup)
5. [Phase 4: Remove Unnecessary Apps](#5-phase-4-remove-unnecessary-apps)
6. [Phase 5: Background App Permissions](#6-phase-5-background-app-permissions)
7. [Phase 6: Startup Apps](#7-phase-6-startup-apps)
8. [Phase 7: Ads & Promotional Content](#8-phase-7-ads--promotional-content)
9. [Phase 8: Privacy & Telemetry](#9-phase-8-privacy--telemetry)
10. [Phase 9: Driver & Windows Update Pass](#10-phase-9-driver--windows-update-pass)
11. [Phase 10: Browser Setup](#11-phase-10-browser-setup)
12. [Phase 11: Optional — Deeper Privacy Controls](#12-phase-11-optional--deeper-privacy-controls)
13. [Phase 12: Disk Cleanup](#13-phase-12-disk-cleanup)
14. [Phase 13: Final Checks & Clean Baseline Backup](#14-phase-13-final-checks--clean-baseline-backup)
15. [Quick Reference Card](#15-quick-reference-card)
16. [Appendix: Troubleshooting](#16-appendix-troubleshooting)

---

## 1. Overview

This document covers a Windows 11 machine from first boot off a USB installer through a fully debloated, privacy-tightened, backed-up baseline. It merges a device-specific install walkthrough with a device-agnostic debloat pass — everything after Phase 1 works identically on any Windows 11 Home or Pro machine, OEM tools aside.

Every step here goes through the Settings app, Task Manager, or File Explorer. Nothing touches the registry, and nothing requires PowerShell or an elevated script. If something behaves unexpectedly, every change in this guide can be reversed the same way it was made.

**This guide covers:**

| ✅ In scope | ❌ Out of scope |
|---|---|
| Clean install from USB media through first login | Dual-boot or multi-partition layouts |
| OOBE privacy toggles and account setup | Domain-joined / enterprise-managed devices |
| App removal, background permissions, startup cleanup | Registry edits or Group Policy tweaks |
| Ads, telemetry, and promotional surface cleanup | Third-party "sovereignty" scripts that disable Windows Update entirely |
| Driver pass, browser setup, disk cleanup, backup | Gaming/Steam configuration |

> 📌 **Device-specific vs. universal.** Phase 1 (the physical install) has some steps specific to the example device used to write this guide — an HP EliteBook. Where a step is OEM-specific, it's called out in a table so you can substitute your own hardware's equivalent. Every phase from Phase 2 onward is identical regardless of manufacturer.

---

## 2. Phase 1: Fresh Install

Estimated time: 10–15 minutes, mostly unattended. Have your USB installer ready before starting.

> ⚠️ **This is a clean install.** The partition step below deletes everything on the target drive. If you need data off the existing system, back it up to an external drive first — there is no undo after that step.

1. Power on the machine and press the boot-menu key repeatedly before Windows has a chance to load (see table below for your OEM's key).
2. Select your USB installer from the boot device list.
3. Click **Install Now**.
4. On the product key screen, click **I don't have a product key** — Windows will auto-detect your edition from the firmware.
5. Select **Windows 11 Pro** when asked which edition to install.
6. On the partition screen, delete all existing partitions, select the resulting unallocated space, and click **Next**.
7. Let the installer run. It restarts automatically when finished.

| OEM | Boot menu key |
|---|---|
| HP (EliteBook and most consumer lines) | `F9` |
| Dell | `F12` |
| Lenovo | `F12` (or `Novo` button on some ThinkPads) |
| Acer | `F12` (may need enabling in BIOS first) |

> ℹ️ **Microsoft account activation.** Signing in with a Microsoft account during OOBE (next phase) activates Windows using the digital license tied to your account and hardware. If this machine previously ran Windows 11 Pro, the license reactivates automatically — you do not need a product key.

---

## 3. Phase 2: Out-of-Box Setup (OOBE)

Estimated time: 5 minutes. Windows walks you through a series of setup screens after the final restart. Move through these in order — don't rush past the privacy toggles.

1. **Region** — select your country.
2. **Keyboard layout** — select your layout; skip the second keyboard-layout prompt.
3. **Connect to Wi-Fi** — connect before continuing.
4. **Sign in with a Microsoft account** — use your primary Microsoft ID. This activates Windows and syncs settings from your existing profile.
5. When asked, choose **Set up for personal use** (not Work or school).
6. **Privacy toggles** — turn off everything on this screen unless you have a specific reason to keep something on. None of these are required for Windows to function.
7. **OneDrive prompt** — click **Only save files to this PC** to skip cloud sync setup. You can configure OneDrive manually later if you want it.
8. Skip or decline any Office and other promotional prompts.
9. You'll land on the desktop when OOBE completes.

---

## 4. Phase 3: First-Boot Privacy & Notification Cleanup

Estimated time: 5 minutes. Do this before installing anything else — these settings are easier to clear from a fresh install than after apps and updates have piled on top.

**System Notifications** — `Settings > System > Notifications`, scroll to the bottom, turn off:
- Get tips and suggestions when I use Windows
- Offer suggestions on how I can set up my device
- Show me the Windows welcome experience after updates

**Start Menu** — `Settings > Personalization > Start`, turn off:
- Show recently added apps
- Show most used apps
- Show recommendations for tips, shortcuts, new apps, and more

**Copilot Sidebar** — `Settings > Personalization > Taskbar > Copilot` → **OFF**. Removes the Copilot button and stops its background server connection. This is the single most impactful toggle in this section if you don't use Copilot.

**Privacy and Telemetry** (initial pass — covered in full in Phase 8):
- `Settings > Privacy & security > Diagnostics & feedback` → Diagnostic data: **Send required diagnostic data**; turn off Tailored experiences and Improve inking and typing
- `Settings > Privacy & security > Activity history` → uncheck **Store my activity history on this device**, click **Clear history**
- `Settings > Privacy & security > General` → turn off all four toggles (advertising ID, language list access, app launch tracking, suggested content in Settings)

> 💡 **Don't over-remove on the first pass.** Flag anything you're unsure about in the next phase and come back to it once you've confirmed the machine works correctly. It's easier to remove something later than to diagnose a missing driver that looked like bloat.

---

## 5. Phase 4: Remove Unnecessary Apps

`Settings > Apps > Installed apps`, sort by **Install date** — this surfaces OEM additions and recent Microsoft Store auto-installs at the top.

| Generally safe to remove | Keep these |
|---|---|
| Microsoft OneDrive — local files unaffected | HP Support Assistant, NitroSense, Lenovo Vantage, Dell SupportAssist — OEM system tools |
| Microsoft Teams (consumer pre-install) — work version is separate | OEM hotkey / function key software — controls backlight, Fn row behavior |
| Microsoft News, Weather, Solitaire Collection | Realtek Audio, AMD Audio, Bang & Olufsen — audio drivers surface here as apps |
| Xbox, Xbox Game Bar, Xbox Console Companion | Snipping Tool, Notepad, Photos, Paint, Windows Terminal |
| Clipchamp, Microsoft To Do, Power Automate, Quick Assist, Cortana | Windows Security — do not remove |
| Spotify, TikTok, Disney+, Prime Video (OEM/Store pre-installs) | AMD Software / NVIDIA App — GPU driver companion, removing breaks driver updates |
| McAfee or Norton trial software — Windows Security replaces these | Touchpad / pointing stick software — especially on ThinkPads and EliteBooks |
| Mozilla Maintenance Service — only relevant if Firefox isn't installed | |

> 💡 **Tip:** If an app name is unfamiliar, search it before removing. OEM utility names are often generic-sounding — a quick search tells you whether it controls hardware or is genuinely optional.

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| Fewer background processes at startup, less memory at idle | OneDrive removal breaks active cloud sync — move files locally first if you use it |
| Removes trial software that may run update daemons or nag prompts | Xbox Game Bar removal disables Win+G screen recording and some game overlays |
| Cleaner app list makes future maintenance faster | Some OEM apps look optional but aren't — read before removing anything from your hardware vendor |

---

## 6. Phase 5: Background App Permissions

This setting applies **only to Microsoft Store (UWP) apps** — traditional desktop `.EXE` apps (Chrome, Steam, VLC, Office) aren't controlled by this toggle and need managing through the Startup tab instead (next phase).

`Settings > Apps > Installed apps` → three-dot menu next to app → **Advanced options** → **Background app permissions**. Three states exist: **Always**, **Power optimized** (the default), and **Never**.

| Set to Never | Leave at Power optimized |
|---|---|
| Photos, Paint, Snipping Tool, Sound Recorder | Realtek / AMD / OEM audio control apps — need to respond to hardware events |
| Feedback Hub | OEM system utilities you actively use (fan control, display calibration) |
| Web Media Extensions, HEVC Video Extensions | Any app that sends you notifications you actually want |
| Microsoft Bing Search, Microsoft Start | Notepad — if you rely on tab session restore |
| Solitaire Collection, any gaming apps you keep | |

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| Reduces background memory/CPU without uninstalling anything — fully reversible per app | Doesn't affect desktop `.EXE` apps at all |
| Store apps set to Never stop fetching content and sending telemetry while idle | Photos set to Never may be slower to generate thumbnails the first time you open a folder |
| Power optimized is already conservative — Never is only needed for apps with no legitimate background use case | Any app set to Never won't deliver notifications while closed |

---

## 7. Phase 6: Startup Apps

`Ctrl + Shift + Esc` → **Task Manager** → **Startup apps** tab → right-click → **Disable**. Task Manager shows a startup-impact rating (Low/Medium/High) next to each entry — prioritize disabling anything rated High that you don't need active the moment Windows loads.

Disabling a startup entry doesn't uninstall or break anything — the app still works normally when opened manually, it just stops claiming resources at boot.

| Safe to disable at startup | Leave enabled |
|---|---|
| OEM launch apps (HP QuickDrop, Acer launch helpers) | Windows Security |
| Skype, Feedback Hub | Realtek HD Audio Manager or equivalent |
| Adobe Updater, Creative Cloud (if not daily) | OEM hotkey / function key support software |
| Gaming launchers — Steam, Epic, GOG (unless you game on boot) | VPN or endpoint security tools you rely on from login |
| OneDrive — launch manually when sync is needed | |
| Spotify | |

> ℹ️ **Same list, two paths.** `Settings > Apps > Startup` shows the identical list with the same toggles — Task Manager is just faster.

---

## 8. Phase 7: Ads & Promotional Content

Windows 11 promotes Microsoft products across the Start menu, lock screen, notification center, taskbar, File Explorer, and Settings itself. None of it is functional — all of it has a toggle.

- **Copilot Sidebar** — already handled in Phase 3, confirm it's still off.
- **Notification-based suggestions** — `Settings > System > Notifications`, uncheck *Offer suggestions on how I can set up my device* and *Get tips and suggestions when I use Windows*.
- **Start Menu recommendations** — `Settings > Personalization > Start`, toggle off *Show recommendations for tips, shortcuts, new apps, and more*.
- **Lock screen** — `Settings > Personalization > Lock screen`, set background to **Picture** or **Slideshow** (Windows Spotlight pulls promotional text alongside the image). Turn off *Get fun facts, tips, tricks, and more on your lock screen*.
- **Settings app suggestions and ad ID** — `Settings > Privacy & security > General`, turn off all four: personalized ads via advertising ID, language list access, app-launch tracking, and suggested content in Settings.
- **File Explorer promotions** — File Explorer → three-dot menu → **Options** → **View** tab → uncheck *Show sync provider notifications*. Stops OneDrive from injecting promotional banners into the navigation pane and toolbar.

> 🔒 **Advertising ID note.** This is a per-device identifier used by Microsoft Store apps to serve targeted ads. Disabling it is an immediate, permanent privacy improvement with no functional side effects — apps can still show generic, non-targeted ads if their business model requires it.

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| Copilot off removes a persistent background server connection | Windows Spotlight images are genuinely high quality — a static image loses the daily rotation |
| Advertising ID off is permanent and has zero functional cost | Show most used apps off means Start no longer surfaces frequent apps — use Search instead |
| Clears Microsoft promotions from every major UI surface in one pass | Some settings may need re-checking after major feature updates |

---

## 9. Phase 8: Privacy & Telemetry

Microsoft documents two diagnostic-data tiers on consumer editions: **Required** (device configuration, crash reports, app compatibility) and **Optional** (broader usage patterns and behavior telemetry).

- **Diagnostic data level** — `Settings > Privacy & security > Diagnostics & feedback > Diagnostic data` → **Send required diagnostic data**.
- **Tailored experiences** — same page → **OFF**. This doesn't reduce what's collected, it limits how the data is used to serve you personalized tips and recommendations.
- **Improve inking and typing** — same page → **OFF**. Stops handwriting/typed-text samples from being transmitted.
- **Activity history** — `Settings > Privacy & security > Activity history` → uncheck *Store my activity history on this device* → **Clear history**.
- **Find My Device** — `Settings > Privacy & security > Find my device` → **OFF** if you don't need to locate this machine remotely. If it's a laptop you travel with, weigh the trade-off before disabling.

> 🔒 **Platform limit.** Windows 11 Home and Pro cannot disable diagnostic data collection entirely — that's only available via Group Policy/MDM on enterprise-managed devices. Required is the floor for consumer installs; this is documented Microsoft policy, not a UI gap.

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| Required tier is meaningfully narrower than Optional | Required diagnostic data still transmits — a platform constraint, not a bug |
| Tailored experiences off stops diagnostic data from driving personalized promo content | Activity History off removes cross-device resume if you use multiple Windows machines |
| Clearing Activity History removes what's already logged, immediately | Find My Device off means no remote location lookup if the machine is lost or stolen |

---

## 10. Phase 9: Driver & Windows Update Pass

Estimated time: 5–10 minutes including a restart. Run this before installing any third-party software — it pulls the latest chipset, audio, and OEM-specific drivers through the safest available channel.

1. `Settings > Windows Update > Check for updates`.
2. Install all available updates, including optional driver updates — expand the "optional updates" section if it appears.
3. Restart when prompted.
4. After restart, check again — a second pass is often required.
5. Confirm nothing is pending before moving on.

**Confirm these are present after updates**, adjusted for your hardware:

- Chipset driver (Intel Management Engine / equivalent) — no yellow warning icon in Device Manager
- Audio driver — confirm output actually works
- OEM hotkey/function-key software — Fn row behaves correctly (brightness, volume, etc.)
- Display driver — confirm scaling looks correct

> 💡 **Tip:** If a driver is still missing after the Windows Update pass, check your OEM's support site directly (e.g. `support.hp.com`) as a second source. Always prefer Windows Update first — manually downloaded OEM drivers are sometimes older than what Microsoft distributes.

---

## 11. Phase 10: Browser Setup

Estimated time: 2–3 minutes. Set up your browser profile(s) and confirm sync before you move further into updates — some driver and Windows Update pages are easier to navigate with a properly signed-in browser.

1. Open your default browser (Edge, if you haven't changed it yet).
2. Sign in to your primary profile and allow settings to sync.
3. Add and sync any secondary profile you use.
4. Confirm extensions, bookmarks, and saved passwords are present.
5. Pin it to the taskbar if needed.

> ℹ️ **Using a non-Edge default?** Install it now and set it as default via `Settings > Apps > Default apps > Web browser` — do this before finishing the Windows Update pass so the browser is in place when you need it.

---

## 12. Phase 11: Optional — Deeper Privacy Controls

If the built-in toggles in Phase 8 aren't enough, **O&O ShutUp10++** is a free, portable tool that surfaces every Windows telemetry and privacy toggle in one interface — including settings with no GUI equivalent that would otherwise require Group Policy or the registry.

It requires no installation, writes no files outside its own directory, and doesn't affect Windows Update or support status.

- Download only from the official source: `https://www.oo-software.com/en/shutup10` — do not use third-party mirrors.
- After launching: **Actions > Apply only recommended settings** as your starting point. This is conservative and covers the same ground as Phase 8 plus a handful of additional low-risk toggles.

> ⚠️ **Caution:** ShutUp10++ is more powerful than the GUI settings in Phase 8. Settings beyond the recommended set can disable Windows Hello biometrics, Nearby Sharing, clipboard sync, and other features. Some settings also reset after major feature updates — re-run after upgrading to a new annual release.

---

## 13. Phase 12: Disk Cleanup

After removing apps and applying updates, old installation files accumulate — previous Windows versions, update delivery caches, temp files.

`Start` → search **Disk Cleanup** → select `C:` → **Clean up system files** → check applicable categories → **OK** → **Delete Files**.

Worth selecting: **Windows Update Cleanup** (usually recovers the most space), **Delivery Optimization Files**, **Temporary files**, **Recycle Bin**.

> ⚠️ **Note:** *Previous Windows installation(s)* removes your rollback files. Safe to delete once you're confident in the current build; skip it if you're shortly after a feature update and might want to roll back.

---

## 14. Phase 13: Final Checks & Clean Baseline Backup

Estimated time: a few minutes. This is the moment to lock in a known-good, fully configured baseline.

**Confirm before finishing:**
- Desktop wallpaper and taskbar alignment set to your preference
- Brightness and volume keys working correctly
- Wi-Fi connects automatically on boot
- Browser profile(s) synced, extensions present
- Audio output working (speakers and headphone jack)
- Display scaling correct (125% is typical for a 1080p 13–15" panel)

**Create a restore point:** `Start` → search **Restore Point** → **Create a Restore Point** → **Protection Settings** → confirm `C:` shows **Protection: On** → **Create** → name it something like `Post-Setup Clean Baseline`.

A restore point is a snapshot of drivers, registry, and system files at this moment — if anything behaves unexpectedly later, you can roll back completely without reinstalling.

**Optional — full disk image:** For protection against a drive failure (which a restore point does not cover), image the whole disk with **Macrium Reflect Free** (`macrium.com/reflectfree`) or the legacy **Windows 7 Backup** tool still bundled via Control Panel → *Backup and Restore (Windows 7)* → *Create a system image*.

> 💾 **Tip:** Store any backup image on an external drive, not a second partition of the same disk. A failing drive takes every partition with it.

---

## 15. Quick Reference Card

| Task | Where |
|---|---|
| Restore point | `Start` → search "Restore Point" |
| Windows Update | `Settings > Windows Update` |
| Installed apps / background permissions | `Settings > Apps > Installed apps` |
| Startup apps | `Ctrl+Shift+Esc` → Task Manager → Startup apps |
| Notifications / Start recommendations | `Settings > System > Notifications` / `Settings > Personalization > Start` |
| Copilot toggle | `Settings > Personalization > Taskbar > Copilot` |
| Diagnostics & feedback | `Settings > Privacy & security > Diagnostics & feedback` |
| Activity history | `Settings > Privacy & security > Activity history` |
| Advertising ID / suggested content | `Settings > Privacy & security > General` |
| File Explorer sync banners | File Explorer → ⋯ → Options → View tab |
| Disk Cleanup | `Start` → search "Disk Cleanup" |
| Default browser | `Settings > Apps > Default apps` |

---

## 16. Appendix: Troubleshooting

### A.1 A driver is missing after the Windows Update pass

Run Windows Update a second time — a follow-up pass after the first restart often catches optional drivers the first pass missed. If it's still missing, check your OEM's support site directly (e.g. `support.hp.com`) as a fallback, but prefer Windows Update first — manually downloaded OEM drivers are sometimes older than what Microsoft distributes.

### A.2 An app I removed turns out to control hardware (Fn keys, fan, display)

This is why Phase 4 flags OEM utility names for a search-before-removing check. If it's already gone, reinstall it from your OEM's support site (search your exact model + "drivers"), or restore from the pre-debloat restore point if you created one before starting.

### A.3 Notifications stopped working for an app I care about

Check whether its background app permission (Phase 5) is set to **Never** — that also blocks notifications while the app is closed. Set it back to **Power optimized**.

### A.4 ShutUp10++ disabled something I needed (Windows Hello, Nearby Sharing)

Re-launch the tool and look for the specific toggle it flipped — it groups settings by category with plain-language descriptions. Re-enabling is the same one-click process as disabling was.

---

*Windows 11 Setup & Debloat Guide · GUI-only · Any device*
