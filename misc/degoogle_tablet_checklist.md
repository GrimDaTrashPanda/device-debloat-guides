=== Android De-Googling Checklist & Restoration Guide ===
Device Example: Fezawio F10 (or any Android tablet)
Purpose: Strip Google apps, enhance privacy, and install open-source replacements
Prepared by: [User + ChatGPT]

--------------------------
TOOLS NEEDED
--------------------------
- Universal Android Debloater (UAD)
- F-Droid (FOSS app store)
- Aurora Store (anonymous Play Store access, optional)
- ADB for optional backups

--------------------------
REMOVED GOOGLE APPS & REPLACEMENTS
--------------------------

1. Browser
- Removed: Chrome (com.android.chrome)
- Replacement: Fennec F-Droid (F-Droid)

2. Email
- Removed: Gmail (com.google.android.gm)
- Replacement: K-9 Mail (F-Droid)

3. Notes
- Removed: Google Keep (com.google.android.keep)
- Replacement: Joplin (F-Droid)

4. Video Streaming
- Removed: YouTube (com.google.android.youtube)
- Replacement: NewPipe (F-Droid)

5. Calendar
- Removed: Google Calendar (com.google.android.calendar)
- Replacement: Etar (F-Droid)

6. Office & Cloud Storage
- Removed: Google Drive & Docs (com.google.android.apps.docs)
- Replacement: Material Files (F-Droid) + Collabora Office (F-Droid)

7. Misc Google Services & System Apps
- Removed:
  - Find My Device (com.google.android.apps.adm)
  - Digital Wellbeing (com.google.android.apps.wellbeing)
  - Google Feedback (com.google.android.feedback)
  - Google Location History (com.google.android.gms.location.history)
  - Google Play Games (com.google.android.play.games)
  - Google TV / Videos (com.google.android.videos)
  - Google Quick Search Box (com.google.android.googlequicksearchbox)
  - Kids Space (com.google.android.apps.kids.home)
  - One-Time Initializer (com.google.android.onetimeinitializer)
  - Partner Setup (com.google.android.partnersetup)
  - Print Service Recommendation (com.google.android.printservice.recommendation)
  - TalkBack Accessibility (com.google.android.marvin.talkback)
  - NFC Tag Service (com.google.android.tag) [only if no NFC]
  - Tencent Soter Framework (com.tencent.soter.soterserver)
  - IFAA Biometric Framework (org.ifaa.aidl.manager)

--------------------------
INSTALLED OPEN-SOURCE REPLACEMENT APPS (ALL FROM F-DROID)
--------------------------
- Fennec F-Droid (Browser)
- K-9 Mail (Email)
- Joplin (Note-taking)
- NewPipe (YouTube alternative)
- Etar (Calendar)
- Collabora Office (Document editing)
- Material Files (File management)
- Aurora Store (alt Play Store access)
- F-Droid (FOSS app store)

--------------------------
BROWSER EXTENSIONS INSTALLED IN FENNEC
--------------------------
- uBlock Origin (ad-blocking)
- Privacy Badger (tracker-blocking)
- Decentraleyes (local CDN privacy)

--------------------------
POST-INSTALL STEPS
--------------------------
1. Reboot tablet after uninstalling Google apps.
2. Confirm replacement apps work correctly.
3. (Optional) Perform ADB backup:
   adb backup -apk -obb -shared -all -f backup.ab
4. (Optional) Freeze Play Store if full de-Googling is desired later.

--------------------------
RECOVERY PLAN
--------------------------
If anything fails or you reset:
- Reinstall F-Droid
- Reinstall replacement apps from this list
- Rerun UAD using this checklist to remove bloat
- Be back to a hardened system in ~30 minutes