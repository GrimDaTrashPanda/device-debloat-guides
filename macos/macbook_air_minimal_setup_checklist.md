MacBook Air 2017 - Minimal macOS Setup Checklist
Startup & Initial Setup
- [ ] Select Language and Region
- [ ] Connect to Wi-Fi
- [ ] Skip Apple ID / iCloud setup (Click 'Set Up Later')
- [ ] Disable Siri when prompted
- [ ] Turn off 'Send diagnostics to Apple'
- [ ] Create a local user account (set username & password)
- [ ] Turn OFF FileVault (disk encryption)
After Reaching Desktop - System Preferences
- [ ] Open System Preferences > Trackpad -> Enable 'Tap to click'
- [ ] Open System Preferences > Battery -> Show battery percentage
- [ ] Open System Preferences > Notifications -> Turn off:
- [ ]    - Siri Suggestions
- [ ]    - Screen Time
- [ ]    - Tips
- [ ]    - Software Update Notifications (optional)
- [ ] Open System Preferences > Users & Groups -> Disable unnecessary login items
- [ ] Open System Preferences > Apple ID -> Sign out or ignore prompts
Optional: Clean Up & Calm Down
- [ ] Safari > Preferences > General -> Disable 'Open new tabs with Favorites'
- [ ] Remove unused apps from Dock (drag out to remove)
- [ ] Disable Startup Sound: Terminal: sudo nvram StartupMute=%01
- [ ] Right-click on nagging banners -> Turn Off notifications
Optional Terminal Battery Health Check
- [ ] Run this in Terminal after a few days of use:
- [ ]   system_profiler SPPowerDataType | grep -i 'cycle count\|condition'
- [ ] Look for:
- [ ]   - Cycle count: Under 500 is great
- [ ]   - Condition: Should say 'Normal'