Kubuntu LTS Install + Post-Install Setup Checklist
Kubuntu LTS Install + Post-Install Setup Checklist
(for Ryzen 5 Mini Desktop with Vega & AX200 Wi-Fi)
PRE-INSTALL PREP
- [ ] Download Kubuntu 22.04.3 LTS ISO (or newer if available)
- [ ] Flash to USB using balenaEtcher or Rufus
- [ ] (Optional) Verify ISO checksum
BIOS SETTINGS
- [ ] Disable Secure Boot
- [ ] Set Boot Mode to UEFI (not Legacy/CSM)
- [ ] Set USB as first boot device (or use F12 boot menu)
LIVE SESSION TEST
- [ ] Wi-Fi (AX200 connects)
- [ ] Bluetooth works
- [ ] Audio playback functional
- [ ] Vega graphics smooth
- [ ] Ethernet (Realtek works)
INSTALLER
- [ ] Select "Minimal Installation"
- [ ] Check "Install third-party software"
- [ ] Use "Erase Disk" (for clean install)
- [ ] Set hostname, username, password
FIRST BOOT
- [ ] Open Discover  Apply all updates
- [ ] Reboot after kernel updates
POST-INSTALL ESSENTIALS
- [ ] Dark Mode (Settings  Appearance  Global Theme)
- [ ] Font scaling or DPI if needed
- [ ] Tweak panel or layout
- [ ] Enable Night Color
INSTALL GOOGLE CHROME
- [ ] Download .deb from google.com/chrome
- [ ] Install via Discover or:
    sudo dpkg -i google-chrome*.deb
    sudo apt install -f
MEDIA SUPPORT
- [ ] Confirm playback of H.264/MP3
- [ ] If issues:
    sudo apt install ubuntu-restricted-extras
FLATPAK SUPPORT
- [ ] sudo apt install flatpak plasma-discover-backend-flatpak
- [ ] flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
- [ ] Reboot to apply Discover Flatpak support
OPTIONAL PACKAGES
- [ ] sudo apt install tlp kde-spectacle neofetch
[[REDACTED:serial]] TOOL (Optional)
- [ ] sudo apt install timeshift
- [ ] Setup RSYNC or BTRFS backup schedule
OPTIONAL TRIMS (If You Want Less)
- [ ] sudo apt purge kmahjongg kpat libreoffice*
- [ ] sudo apt autoremove