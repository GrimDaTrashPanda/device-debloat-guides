# iOS 26 Setup & Accessibility Guide

> Local-first, battery-optimized, sensory-quiet iPhone setup
> iOS 26 · Settings-only · Nothing here is irreversible

---

## Table of Contents

1. [Overview](#1-overview)
2. [Phase 1: Display, Liquid Glass & Motion](#2-phase-1-display-liquid-glass--motion)
3. [Phase 2: Sound & Haptics](#3-phase-2-sound--haptics)
4. [Phase 3: iCloud, Backup & Account Settings](#4-phase-3-icloud-backup--account-settings)
5. [Phase 4: Background App Refresh & App Store](#5-phase-4-background-app-refresh--app-store)
6. [Phase 5: Battery, Charging & Adaptive Power](#6-phase-5-battery-charging--adaptive-power)
7. [Phase 6: Notifications](#7-phase-6-notifications)
8. [Phase 7: Location & Tracking](#8-phase-7-location--tracking)
9. [Phase 8: Privacy, Analytics & Apple Intelligence](#9-phase-8-privacy-analytics--apple-intelligence)
10. [Phase 9: Face ID & Attention Awareness](#10-phase-9-face-id--attention-awareness)
11. [Phase 10: Keyboard Behavior](#11-phase-10-keyboard-behavior)
12. [Phase 11: Home Screen, Wallpaper & Spotlight](#12-phase-11-home-screen-wallpaper--spotlight)
13. [Phase 12: Optional — Guided Access & Screen Time](#13-phase-12-optional--guided-access--screen-time)
14. [Phase 13: Reboot to Apply](#14-phase-13-reboot-to-apply)
15. [Quick Reference Card](#15-quick-reference-card)
16. [Appendix: Notes & Exceptions](#16-appendix-notes--exceptions)

---

## 1. Overview

iOS 26 ships with iCloud syncing most things by default, background processes refreshing constantly, and a new visual language — **Liquid Glass** — that renders real-time transparency and light refraction across the interface. It looks impressive. It also costs battery, and on older hardware, noticeable GPU/CPU overhead.

This guide merges two passes over the same device: a general minimalist/battery/privacy setup, and a deeper "sensory-quiet" accessibility pass that strips out the animation, haptics, and behavioral micro-feedback iOS uses to keep you engaged. Where both sources touched the same setting, they're merged into one step below rather than repeated.

**This guide covers:**

| ✅ In scope | ❌ Out of scope |
|---|---|
| Liquid Glass, motion, and visual-noise reduction | Jailbreaking or unsupported configuration profiles |
| iCloud service selection and local encrypted backups | Enterprise/MDM-managed devices |
| Background refresh, battery, and charging habits | Family Sharing / Screen Time for a managed child's device |
| Notifications, location, analytics, and ad personalization | Apple Watch or other companion device setup |
| Sensory-quiet accessibility settings (haptics, transitions, Face ID attention features) | |

> 📌 **Nothing here is irreversible.** Every toggle in this guide can be flipped back exactly the way it was set. If something breaks your workflow, undo just that one setting rather than reverting everything.

---

## 2. Phase 1: Display, Liquid Glass & Motion

iOS 26's Liquid Glass makes menus, buttons, and UI elements semi-transparent and light-refracting in real time — the biggest visual change to iOS since iOS 7. iOS also uses motion (parallax, zoom transitions, ripple effects) as a secondary communication layer. This phase flattens both.

**Liquid Glass — pick one:**

| Option | Where | What it does |
|---|---|---|
| **A — Tinted** (less transparent, keeps Liquid Glass) | `Settings > Display & Brightness > Liquid Glass` → Tinted | Increases opacity while keeping the Liquid Glass shapes. Better contrast, still looks modern. |
| **B — Reduce Transparency** (aggressive, near-solid) | `Settings > Accessibility > Display & Text Size > Reduce Transparency` → ON | Replaces most translucent elements with solid/near-solid backgrounds. Closest to pre-iOS 26 look; also cuts GPU rendering workload — iOS renders real-time blur by sampling pixels behind UI layers, and this eliminates that work entirely. |

> ℹ️ **These two settings override each other.** The Liquid Glass menu only appears when Reduce Transparency is off. Pick Tinted (leave Reduce Transparency off) or pick near-solid (turn Reduce Transparency on) — not both.

**Additional display flattening** (all under `Settings > Accessibility > Display & Text Size`):
- **Reduce White Point** → ON, set to 40–60%. Lowers max display white point independent of the brightness slider — useful in dark environments or for light sensitivity. 50% is a neutral starting point.
- **Differentiate Without Color** → ON. Adds shapes/labels to UI elements that otherwise rely on color alone (e.g. the red/green dot in Messages threads).
- **On/Off Labels** → ON. Adds a visible I/O label to every toggle switch, removing reliance on color coding alone.
- **Increase Contrast** → ON. Darkens and sharpens borders and interface elements — works alongside Reduce Transparency (contrast handles edges, transparency handles fills).

**Motion** (all under `Settings > Accessibility > Motion`):
- **Reduce Motion** → ON. The master switch — disables home screen parallax, replaces zoom transitions with cross-fades, and removes Liquid Glass's lensing/ripple effects. Also suppresses most of iOS 26's physics-based UI animations.
- **Prefer Cross-Fade Transitions** → ON (appears only after Reduce Motion is on). Without this, Reduce Motion falls back to a simple dissolve; with it, transitions are specifically cross-fades. Enable both together.
- **Auto-Play Message Effects** → OFF. iMessage effects (confetti, balloons, fireworks) only play if you tap Replay, instead of firing automatically.
- **Auto-Play Video Previews** → OFF. Stops videos in the App Store, News, and other first-party apps from playing silently as you scroll.
- **Limit Frame Rate** → ON (iPhone 13 Pro and later, ProMotion models only). Locks the display to 60Hz instead of adaptive 120Hz. Real battery gain, especially during scrolling-heavy use — trade-off is noticeably less smooth scrolling. Try it for a week before deciding.

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| Reduce Transparency cuts real-time GPU blur rendering — measurable battery gain on older devices | Loses some of the visual depth/appeal Apple intended; some users find the interface feels flatter |
| Reduce Motion is the single most effective setting for visual quietness | App-switching feels different — cross-fades are less spatially grounded than zoom transitions for some users |
| Limit Frame Rate is one of the higher-value battery wins on Pro models | Scrolling is visibly less smooth with frame rate limited — evaluate the trade-off for your usage |

---

## 3. Phase 2: Sound & Haptics

The Taptic Engine fires on nearly every interaction — scrolling to a list's edge, long-pressing an app, each keystroke. These are designed as moment-to-moment confirmation/reward feedback. Reducing them is one of the less obvious ways to change how the phone feels to use.

- **System Haptics** — `Settings > Sounds & Haptics > System Haptics` → OFF. Disables haptics for system-level interactions (pulling down Notification Center, long-pressing the home screen, switching tabs).
- **Keyboard Haptics** — `Settings > Sounds & Haptics > Keyboard Feedback > Haptic` → OFF. Separate from System Haptics — this is the pulse on every individual keypress. Fires hundreds of times a day for heavy typists; one of the more concrete battery gains available.
- **Keyboard Sound** — same menu, `Sound` → OFF (optional). No battery impact, purely a sensory preference. Often already off in silent mode.

> 💡 **Tip:** System Haptics off does **not** silence haptics that apps implement directly — navigation turn-by-turn, game feedback, and some notification haptics fire regardless. Those are controlled per-app, not by this toggle.

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| Keyboard haptics off is a measurable battery win for heavy typists | Some people find haptic confirmation improves typing accuracy — evaluate for yourself |
| Removes a layer of behavioral reinforcement that can make apps feel more compulsive | System Haptics off removes tactile feedback on gestures you may rely on (e.g. reaching the end of a scroll list) |
| Fully silent keyboard (haptics + sound off) is a clean, distraction-free typing environment | Third-party app haptics aren't controlled by these toggles |

---

## 4. Phase 3: iCloud, Backup & Account Settings

iCloud is broadly enabled by default. Every service it syncs runs background activity, uses battery, and sends data to Apple's servers.

`Settings > [your name] > iCloud` — turn off everything you don't actively use:

| Service | Guidance |
|---|---|
| iCloud Drive | Off unless you rely on it for cross-device file access |
| Photos | Off if you manage photos locally or use a different backup |
| Keychain | Off if you use a third-party password manager (1Password, Bitwarden, etc.) |
| Mail, Contacts, Calendars | Keep whichever you actually sync; turn off the rest |
| iCloud Backup | Off if you do local encrypted backups instead (see below) |

**Local encrypted backup instead:**

1. Connect iPhone to Mac or PC.
2. Open Finder (Mac) or iTunes (PC) and select your device.
3. Choose **Encrypt local backup** — set a strong password and store it somewhere you won't lose it.
4. Click **Back Up Now**.

Encrypted local backups include Health data and passwords that unencrypted or iCloud backups exclude, and they're faster to restore from.

> 💾 **Frequency:** Back up before any major iOS update and any time you've done significant setup or hold data you'd be upset to lose. A backup from three months ago beats no backup, but not by much.

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| Less background syncing means better battery and less data use | You lose automatic off-device backups — remember to plug in |
| Data stays on your device and your local machine | Losing both your phone and your backup drive means losing data — store the drive somewhere safe |
| Local backups are faster and more complete than iCloud's | |

---

## 5. Phase 4: Background App Refresh & App Store

Background App Refresh lets apps wake up and pre-load content so it's ready the moment you open them. Waiting an extra second or two on open is usually worth not burning battery all day in the background.

- `Settings > General > Background App Refresh` → **Off** (or **Wi-Fi Only** as a middle ground)
- `Settings > App Store` → turn off *App Updates* and *Automatic Downloads*
- `Settings > Privacy & Security > Analytics & Improvements` → turn everything off

With Background App Refresh off, apps fetch content only when opened. The phone is effectively inert when the screen is off — no network activity, no background state changes, no surprise badge counts or content jumps mid-use.

> 💡 **Exception:** Apps that genuinely need background operation — medical monitoring (e.g. Dexcom), navigation, audio streaming — either need the master switch on, or use separate background modes (audio, location, Bluetooth LE) that this toggle doesn't affect. Dexcom specifically uses Bluetooth LE background scanning, which is exempt regardless of this setting.
>
> If turning it off entirely breaks something you rely on, leave the master switch on and disable it per-app instead for anything that doesn't need it.

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| One of the single biggest gains for battery life | Navigation and real-time messaging apps may be slower to show current data |
| Phone is predictable/inert when the screen is off — no surprise state changes | Apps that stream audio in the background (Overcast, Spotify) need this on |
| Reduces background cellular data usage | Messaging/email/social feeds won't pre-load — brief delay on open |

---

## 6. Phase 5: Battery, Charging & Adaptive Power

`Settings > Battery`:

- **Adaptive Power** (`Power Mode > Adaptive Power`, iPhone 15 Pro and later) — automatically trims brightness and performance when it detects the battery running low for the day. Less aggressive than Low Power Mode; on by default on iPhone 17. Worth enabling on a supported device.
- **Optimized Battery Charging** (`Charging > Optimized Battery Charging`) → ON. Learns your routine and delays charging past 80% until shortly before you typically unplug — reduces aging from prolonged high-charge states. Leave this on.
- **Charge Limit** (`Charging > Charge Limit`, new in iOS 26) → set to **90%**. A solid balance between capacity and long-term battery strain. Raise temporarily for travel days.

> ⚠️ **On Low Power Mode:** reserve it for emergencies. iOS 26's Low Power Mode disables 5G on most devices, slows background sync, and throttles CPU — it's a blunt instrument. Adaptive Power and the charge limit slider accomplish most of the same goal without those trade-offs.

**Charging habits** (hardware side of battery health):
- Avoid overnight charging where practical, or lean on Optimized Charging / Charge Limit if it's unavoidable.
- Avoid wireless charging for daily use — it runs hotter and degrades capacity faster than wired.
- Use a lower-wattage charger (20W or less) for everyday charging — heat is the enemy of battery health.
- Keep the battery roughly between 20% and 80–85% on typical days; occasional full drain/charge cycles keep the reported capacity calibrated, but shouldn't be a habit.

> 🔋 Check `Settings > Battery > Battery Health` periodically — below 80% maximum capacity is Apple's threshold for considering a battery degraded enough to warrant replacement.

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| Charging habits are the highest-leverage thing for long-term battery longevity | 90% charge limit means less range on heavy-use days — easy to raise temporarily |
| Adaptive Power handles day-to-day efficiency automatically | Adaptive Power requires iPhone 15 Pro or later |
| Wired + moderate wattage is both faster and better for the battery than wireless | |

---

## 7. Phase 6: Notifications

Every notification wakes the screen, fires haptics, and briefly spins up the processor. Beyond battery, notification overload is also a focus problem — be ruthless here.

- `Settings > Notifications` — go through each app; allow notifications only for things that genuinely need your immediate attention.
- Anything that doesn't need to interrupt you: set to **Deliver Quietly**, or off entirely.
- `Settings > Siri & Search > Suggestions on Lock Screen` → off
- `Settings > Siri & Search > Suggestions in App` → off

Practical filter: messages from people, calls, calendar alerts, navigation prompts stay loud. Everything else can probably wait until you check the app.

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| Screen wake-ups drop significantly, extending battery | You may occasionally miss something you wanted — review after a week and re-enable as needed |
| Improved focus and fewer interruptions | |
| Easier to spot genuinely important alerts when they're not buried in noise | |

---

## 8. Phase 7: Location & Tracking

Location Services is a major contributor to background battery drain, particularly for apps checking your location frequently. The goal isn't disabling it entirely — it's making sure only apps that need it have it, and only while in use.

- `Settings > Privacy & Security > Location Services` — go through each app: navigation/maps → **While Using**; almost everything else → **Never** or **While Using** (almost nothing legitimately needs **Always**).
- `Settings > Privacy & Security > Tracking > Allow Apps to Request to Track` → OFF
- `Settings > Safari > Prevent Cross-Site Tracking` → ON
- `Settings > Privacy & Security > Location Services > System Services` — turn off *Significant Locations*, *iPhone Analytics*, *Routing & Traffic* (if you don't use Apple Maps)

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| GPS is one of the most battery-intensive sensors — less usage means real gains | Weather apps set to Never won't show local weather automatically |
| Reduces passive third-party location tracking | Some apps degrade if location is denied — check what breaks before committing |
| Significant Locations feeds Apple's on-device location history — worth disabling if unused | |

---

## 9. Phase 8: Privacy, Analytics & Apple Intelligence

- `Settings > Privacy & Security > Analytics & Improvements` → turn off *Share iPhone Analytics*, *Share iCloud Analytics*, *Improve Siri & Dictation*.
- `Settings > Privacy & Security > Apple Advertising > Personalized Ads` → off.
- **Apple Intelligence** — most features run on-device, but some requests route to Apple's Private Cloud Compute. To opt out entirely: `Settings > Apple Intelligence & Siri > Apple Intelligence` → off. Or leave it on and review which specific features route off-device — most don't.
- `Settings > Siri & Search` — per app, turn off *Show App in Search*, *Show Suggestions*, and *Learn from this App* if you don't want Siri building a behavioral profile from it.

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| Reduces data Apple collects about usage patterns | Turning off Siri learning reduces suggestion accuracy over time |
| Personalized-ads opt-out is quick and has no functional impact | Apple Intelligence off means losing Writing Tools, photo cleanup, and Siri improvements |
| On-device AI keeps working regardless of these toggles | |

---

## 10. Phase 9: Face ID & Attention Awareness

The TrueDepth camera does more than unlock the phone — Attention Aware Features detect whether you're looking at the screen and adjust behavior accordingly (lowering alarm volume, keeping the screen on longer, delaying lock).

- **Attention Aware Features** — `Settings > Face ID & Passcode > Attention Aware Features` → OFF. With this off, alarms/ringtones always play at full volume and the screen dims/locks on its normal schedule regardless of gaze. More predictable, and one fewer regular use of the TrueDepth camera.
- **Require Attention for Face ID** — same menu → **ON (recommended, leave as default)**. This is a security setting, not a comfort one. It requires your eyes open and directed at the camera to unlock; without it, the phone can potentially be unlocked while you're asleep.

> 🔒 **Security note:** these are two different settings that sound similar. Attention *Aware* Features is the comfort/behavior one — safe to disable. Require Attention *for Face ID* is the security one — leave it on.

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| Alarms and ringtones play at set volume without gaze-based attenuation | You lose the "quietly lowers when you glance at it" behavior, if you found that useful |
| Screen dims/locks predictably regardless of whether you're looking at it | Screen may dim while reading long text or watching video without touching it — tap to keep it awake |
| Reduces contexts where the TrueDepth camera is actively scanning | No impact on Face ID unlock speed or reliability |

---

## 11. Phase 10: Keyboard Behavior

The default keyboard is a continuous suggestion engine — predicting, auto-correcting, and shifting keys as it learns. This produces a keyboard that moves under your fingers. These settings make it static and predictable.

All under `Settings > General > Keyboard`:

- **Predictive** → OFF. Removes the suggestion bar above the keyboard; the typing area becomes fixed instead of shifting after every word.
- **Auto-Correction** → OFF. iOS still underlines suspected errors (tap to accept/dismiss), but won't silently change what you typed.
- **Smart Punctuation** → OFF. Stops automatic conversion of straight quotes to curly quotes, double hyphens to em dashes, etc. — useful in prose, frequently wrong in technical writing, URLs, or code.
- **Slide to Type** → OFF (optional). Disables swipe-to-type gesture input if you don't use it.

> 💡 **Tip:** Auto-Correction off doesn't disable spell-check — iOS still flags suspected errors in red, you just decide manually whether to accept changes. You stay in control of every word.

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| Fixed keyboard layout means fewer mis-taps from shifting suggestion targets | Predictive text off removes a feature many people rely on for speed |
| What you type stays typed — no flow interruption from unwanted corrections | More manual error-catching; your typing accuracy becomes more visible |
| Smart Punctuation off is essential for code, URLs, or terminal output | Slide to Type off removes swipe input if that's part of your workflow |

---

## 12. Phase 11: Home Screen, Wallpaper & Spotlight

A dense home screen is a context-switching surface — every glance presents multiple potential action points. This phase reduces it to a neutral surface and makes Spotlight the intentional launch method.

**App & widget cleanup:**
- Long-press app → **Remove App** → **Delete App**, or **Remove from Home Screen** to keep it searchable in App Library.
- Keep your home screen to one page; move everything else to App Library (swipe left past your last page).
- Long-press any widget → **Remove Widget**, or limit to one genuinely useful one.

**Wallpaper:**
- `Settings > Wallpaper > Add New Wallpaper` → choose a still photo (no Live/Depth tag) or a solid color. Avoid Live Photos (animate on long-press), Depth Effect, Weather & Astronomy (continuously updating), and Shuffle wallpapers.
- **Lock screen Depth Effect** — long-press lock screen → **Customize** → select the wallpaper layer → disable Depth Effect. This flattens the lock screen to a single rendering layer.
- **Lock screen widgets** — long-press lock screen → **Customize** → remove widget slots if you're not using them for glanceable data.

**Spotlight as primary launcher:**
- Swipe down from the center of the home screen, or `Settings > Home Screen > Show on Home Screen > Search`.
- `Settings > Home Screen > Show Suggested & Recent Apps in Dock` → OFF
- `Settings > Siri & Search > Suggestions on Home Screen` → OFF

> 💡 **App Library:** you don't need to delete apps you rarely use — just remove them from the home screen. They stay searchable via Spotlight and browsable in App Library.

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| One-page home screen removes the decision of where to look for things | Takes 10–15 minutes upfront to reorganize |
| Still wallpaper eliminates a persistent background GPU workload | Weather/calendar/activity widgets on lock screen are genuinely useful — evaluate what you'd lose |
| Spotlight launch is faster and more deliberate than grid navigation | App Library's automatic categories are sometimes unintuitive |

---

## 13. Phase 12: Optional — Guided Access & Screen Time

Two underused Accessibility tools for intentional use rather than passive scrolling. Neither is required for the rest of this guide, but worth knowing about if you want to go further.

- **Guided Access** — `Settings > Accessibility > Guided Access` → ON, triple-click the side button to activate. Locks the phone to a single app, optionally disabling touch areas or hardware buttons within it. Useful for reading an article or using one app without the temptation to switch.
- **App Limits (Screen Time)** — `Settings > Screen Time > App Limits > Add Limit`. Sets a daily time budget per app/category; the icon grays out and requires a passcode override past the limit.
- **Downtime** — `Settings > Screen Time > Downtime`. Blocks all apps except explicitly allowed ones during a scheduled window (e.g. overnight).

> 💡 **Note:** Screen Time uses a separate passcode from your device passcode. Set one you won't forget and won't leave somewhere easy to find — App Limits' effectiveness depends on that passcode being genuinely inconvenient to enter.

| ✅ Benefits | ⚠️ Possible drawback |
|---|---|
| Guided Access creates a single-purpose mode with no ability to drift | Exiting requires a triple-click + passcode — the point, but can be disruptive if you need to switch apps urgently |
| App Limits add friction at the exact moment habit loops begin | App Limits are trivially bypassed with the Screen Time passcode |
| Downtime produces a scheduled quiet window with no ongoing willpower required | Downtime blocks all non-allowed apps, including ones you might legitimately need that evening |

---

## 14. Phase 13: Reboot to Apply

After changes across this many menus, a cold reboot ensures the full profile loads cleanly across all system frameworks. iOS carries some rendering/animation state in memory that persists across app launches — without a reboot, **Reduce Motion** and **Reduce Transparency** in particular can leave residual animation or blur artifacts in some apps until the next restart.

**Side button + Volume Down** → slide to power off → wait 10 seconds → side button to restart.

> 🔁 This is the step most people skip — and the one most likely to explain why settings "didn't fully take." Not optional if you want a consistent result.

---

## 15. Quick Reference Card

| Task | Where |
|---|---|
| Liquid Glass / Reduce Transparency | `Settings > Display & Brightness` / `Settings > Accessibility > Display & Text Size` |
| Reduce Motion, Limit Frame Rate | `Settings > Accessibility > Motion` |
| System / Keyboard Haptics | `Settings > Sounds & Haptics` |
| iCloud services | `Settings > [your name] > iCloud` |
| Background App Refresh | `Settings > General > Background App Refresh` |
| Battery, Charging, Charge Limit | `Settings > Battery` |
| Notifications | `Settings > Notifications` |
| Location Services | `Settings > Privacy & Security > Location Services` |
| Analytics, Advertising, Apple Intelligence | `Settings > Privacy & Security` / `Settings > Apple Intelligence & Siri` |
| Attention Aware Features | `Settings > Face ID & Passcode` |
| Predictive text, Auto-Correction | `Settings > General > Keyboard` |
| Wallpaper, Lock Screen | `Settings > Wallpaper` |
| Guided Access, Screen Time | `Settings > Accessibility > Guided Access` / `Settings > Screen Time` |

---

## 16. Appendix: Notes & Exceptions

### A.1 An app needs Background App Refresh but I turned it off globally

Leave the master switch on and disable it per-app instead (`Settings > General > Background App Refresh`, then toggle individually). Apps using Bluetooth LE, audio, or location background modes (Dexcom, navigation, streaming audio) are exempt from this toggle regardless — they use separate background permissions.

### A.2 Reduce Motion / Reduce Transparency looks like it "didn't fully apply"

Reboot (Phase 13). iOS retains some in-memory rendering state that a toggle alone won't clear — a cold restart forces every framework to reinitialize with the new settings.

### A.3 I disabled Attention Aware Features but Face ID feels less secure

You likely also touched **Require Attention for Face ID** by mistake — check that it's still **ON**. It's a separate, security-relevant setting from the comfort-oriented Attention Aware Features and should stay enabled.

### A.4 A weather/navigation app stopped showing accurate local data

Check Location Services (Phase 7) — it was probably set to **Never**. Navigation and weather apps generally need **While Using** to function correctly.

---

*iOS 26 Setup & Accessibility Guide · Settings-only · Nothing here is irreversible*
