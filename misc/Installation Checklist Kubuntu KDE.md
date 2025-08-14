Installation Checklist Kubuntu KDE Plasma

Love that mindset — **pragmatic, clean, efficient.** You're not here to shave 100MB off updates if it costs you sanity. Kubuntu LTS with default apps is still lean compared to Windows, and you’ve got the hardware to handle it with zero slowdown.

---

## ✅ Kubuntu LTS Install + Post-Install Setup Checklist (For Your Ryzen Mini Desktop)

---

### 🧰 **Pre-Install Prep**
- [ ] ✅ Download **Kubuntu 22.04.3 LTS ISO** (or newer LTS if available)
- [ ] ✅ Flash it to USB using **balenaEtcher** or **Rufus**
- [ ] ✅ Optional: Verify checksum (for peace of mind)

---

### 🔧 **BIOS Settings**
- [ ] Disable **Secure Boot**
- [ ] Set **Boot Mode** to **UEFI** (not Legacy/CSM)
- [ ] Set USB as first boot device (or use boot menu key, usually `F12`)

---

### 💻 **Live Session Test**
- [ ] Boot into the Kubuntu Live USB
- [ ] Confirm:
  - [ ] Wi-Fi (Intel AX200 connects cleanly)
  - [ ] Bluetooth (detects speakers, etc.)
  - [ ] Audio playback (test YouTube in Firefox)
  - [ ] Vega graphics (smooth UI, screen brightness fine)
  - [ ] Ethernet (Realtek shows up and connects)

---

### 💽 **Installer Steps**
- [ ] Choose **"Minimal Installation"**
- [ ] Check **“Install third-party software”** (adds media codecs, Wi-Fi/BT firmware)
- [ ] Use **Erase Disk** (if you're doing a clean install)
- [ ] Set hostname (e.g., `minibox`), create your user, pick password

---

## 🚀 First Boot Checklist

### 🔄 System Update
- [ ] Open **Discover** (KDE software center)
- [ ] Apply all available updates
- [ ] Reboot if kernel updates are included

---

## 🛠️ Post-Install Essentials

### 🖥️ UI Tweaks (Optional, but you’ll probably want these)
- [ ] Switch to **Dark Mode** (`Settings → Appearance → Global Theme`)
- [ ] Adjust **font scaling** or DPI if display is high-res
- [ ] Move panel to top or tweak as desired
- [ ] Enable **Night Color** (Settings → Display → Night Color)

---

### 🌐 Browser: Chrome
- [ ] Go to [google.com/chrome](https://google.com/chrome) → download `.deb` package
- [ ] Install via Discover or with:
  ```bash
  sudo dpkg -i google-chrome-stable_current_amd64.deb
  sudo apt install -f  # in case of missing deps
  ```

---

### 🎥 Media Support
- [ ] Confirm playback of H.264/MP3 in Chrome and VLC
- [ ] If issues:
  ```bash
  sudo apt install ubuntu-restricted-extras
  ```

---

### 📦 Flatpak Support (Optional but recommended)
- [ ] Install Flatpak:
  ```bash
  sudo apt install flatpak plasma-discover-backend-flatpak
  ```
- [ ] Add Flathub:
  ```bash
  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  ```
- [ ] Reboot to apply KDE Discover integration

---

### 🛡️ Optional Quality-of-Life Packages
```bash
sudo apt install tlp  # Battery optimization, even if plugged in
sudo apt install kde-spectacle  # Better screenshot tool if not preinstalled
sudo apt install neofetch  # Fun system summary in terminal
```

---

### 🧯 System Restore Prep (Optional)
- [ ] Install Timeshift if you want [[REDACTED:serial]] backups:
  ```bash
  sudo apt install timeshift
  ```
  - Choose **RSYNC** (safer, simpler) or BTRFS if you’re using that file system
  - Set scheduled backups if desired

---

### 🧼 Optional Trims (only if you *really* want to)
- [ ] Uninstall unused KDE apps via Discover or:
  ```bash
  sudo apt purge kmahjongg kpat libreoffice*
  sudo apt autoremove
  ```

---

## 🎯 You're Done!

You now have:
- A fully working Kubuntu LTS install
- All hardware supported day one
- A clean, minimal Plasma experience that looks great and runs lean
- The power to customize or expand however you like

---

Want a printable or markdown version of this to stash in your knowledge base? Or help with building a theme/workflow you can replicate later?