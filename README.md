# mayumi-hyprland
Dotfiles for my Hyprland rice.

---

<img width="1920" height="1080" alt="2025-11-07-025640_hyprshot" src="https://github.com/user-attachments/assets/75fd2c15-5772-47c1-ad19-d52dae5d12d3" />

---

<img width="1920" height="1080" alt="2025-11-07-025814_hyprshot" src="https://github.com/user-attachments/assets/12799888-66ab-4b2d-9409-cdd53b2f2e5c" />

---

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/edc73e34-7539-4f32-9fc0-5c989c4d1a16" />

---

## Usage
After installing Hyprland and installing the required packages from the wiki and the package list below.

First make sure to **backup and delete** your current configuration files.

Then clone this repo to your **/home** directory, install `stow`, and run `./stow.sh`

---

## Packages
Essential packages such as `base`, `linux`, `linux-firmware`, `base-devel`, `grub`, `efibootmgr`, `neovim` and `networkmanager` from arch wiki are expected to be already installed.

These are the other packages I have installed on my system

##

### Acer Battery Limit
`acer-wmi-battery-dkms-git` from AUR are used to manage the battery limiter on Acer laptops.

To activate the battery limiter (or health mode):
```
echo 1 | sudo tee /sys/bus/wmi/drivers/acer-wmi-battery/health_mode
```

To deactivate the battery limiter:
```
echo 0 | sudo tee /sys/bus/wmi/drivers/acer-wmi-battery/health_mode
```

So far, the limiter is persistent between reboot from my testing.

**Dual Boot Scenario with Windows 11**

It is also not independent, because I can change the settings from Windows 11, and Windows 11 can also change the settings from there through Acer Sense. Both sides can change the settings.

If I set the limit from Windows 11, it will carry over to Arch Linux. Because of that, I'm guessing that setting it through acer-wmi-battery also carries it over to Windows 11.

##

### AMD CPU
- amd-ucode

```
sudo pacman -S amd-ucode
```

##

### AMD GPU
- lib32-vulkan-radeon
- vulkan-radeon

```
sudo pacman -S lib32-vulkan-radeon vulkan-radeon
```

##

### NVIDIA GPU
- lib32-nvidia-utils
- libva-nvidia-driver
- linux-headers
- nvidia-dkms

```
sudo pacman -S lib32-nvidia-utils libva-nvidia-driver linux-headers nvidia-dkms
```

##

### pacman
- archlinux-xdg-menu (to fix empty "open with" in dolphin)
- audacity
- blueman
- bluez-utils
- brightnessctl
- cava
- cliphist (for clipboard manager)
- dolphin
- fastfetch
- git
- github-cli
- glow
- hyprland
- hyprlock
- hyprpaper
- hyprpolkitagent (GUI app to be able to request elevated privileges)
- hyprshot
- kitty
- kvantum
- libibus (maybe a dependency, not sure yet)
- libwebp-utils (for sleepy-launcher-bin)
- nm-connection-editor
- ntfs-3g
- nwg-look
- pavucontrol
- pipewire
- pipewire-pulse
- power-profiles-daemon
- python-goobject (maybe a dependency, not sure yet)
- qalculate-qt
- qt5-wayland
- qt6-wayland
- stow
- swaync
- waybar
- wireplumber
- wofi
- xdg-desktop-portal-hyprland-git (currently working to screenshare on zoom but broke after a window resize)
- zsh

```
sudo pacman -S archlinux-xdg-menu audacity blueman bluez-utils brightnessctl cava dolphin fastfetch git github-cli glow hyprland hyprlock hyprpaper hyprpolkitagent hyprshot kitty kvantum libibus libwebp-utils nm-connection-editor ntfs-3g nwg-look pavucontrol pipewire pipewire-pulse power-profiles-daemon python-gobject qalculate-qt qt5-wayland qt6-wayland stow swaync waybar wireplumber wofi xdg-desktop-portal-hyprland zsh
```

**Optional:**
- ark
- btop
- iperf3
- mangohud
- mpv
- qbittorrent
- steam
- tree
- unrar

```
sudo pacman -S ark btop iperf3 mangohud mpv qbittorrent steam tree unrar
```

##

### AUR
- anki
- arttime-git
- catppuccin-cursors-mocha
- catppuccin-gtk-theme-git
- cloudflare-warp-bin
- localsend
- nomacs
- papirus-folders-catppuccin-git
- pfetch
- proton-cachyos
- proton-ge-custom-bin
- qt6ct-kde
- sleepy-launcher-bin
- spicetify-cli
- spotify
- unimatrix-git
- wlogout
- yay
- zen-browser-bin
- zoom

You need to install `yay` before using this command.

```
yay -S anki arttime-git catppuccin-cursors-mocha catppuccin-gtk-theme-git cloudflare-warp-bin nomacs papirus-folders-catppuccin-git pfetch proton-cachyos proton-ge-custom-bin qt6ct-kde sleepy-launcher-bin spicetify-cli spotify unimatrix-git wlogout yay zen-browser-bin zoom
```

---

## Fonts
What I have installed in my system are as follows:
- noto-fonts
- noto-fonts-cjk
- noto-fonts-emoji
- otf-font-awesome
- ttf-cascadia-mono-nerd
- ttf-font
- ttf-iosevka-nerd
- ttf-jetbrains-mono-nerd
- woff2-font-awesome

```
yay -S ttf-iosevka-nerd ttf-jetbrains-mono-nerd ttf-caskaydia-mono-nerd ttf-font noto-fonts noto-fonts-cjk noto-fonts-emoji otf-font-awesome
```

---

## Steps before using

### Captive Portals
For handling the wifi with captive portal, I use [captive-portal-sh](https://github.com/Seme4eg/captive-portal-sh.git). 

It will handle figuring out the captive portal url and open its page in default browser.

##

### zsh
**oh-my-zsh** is used for zsh customization.  

##

### Configure path
Since some of the config file such as for the packages below doesn't seem to support `~/` or `$HOME/` file path. Change the path to **your own home path**.
1. glow `glow.yml`
2. wofi `style.css`
3. spicetify `config-xpui.ini` (if installed)

##

### GTK Themes
GTK themes (both 3.0 and 4.0) are handled by **nwg-look**

Install `catppuccin-cursors-mocha` (will also be used later by *hyprcursor*) and `catppuccin-gtk-theme-git`

Then configure it inside **nwg-look**

##

### Qt Themes
Qt theming are handled by qt6ct and kvantum

1. Add `env = QT_QPA_PLATFORMTHEME,qt6ct` to **hyprland.config**
2. Then, set the theme inside kvantum to catppuccin
3. There should already be `catppuccin-mocha-lavender` theme inside of `~/.config/Kvantum/`
4. Inside qt6ct, set style to **kvantum-dark** and color scheme to **KvDark** (since Style's color doesn't work with Dolphin for some reason).
5. You can also set the font for Qt apps, I use *Noto Sans size 11*.
6. Icon theme for Dolphin are `papirus-folders-catppuccin-git` (install it first).
7. Set it by **qt6ct → Icon Theme** and choose **Papirus-Dark**
8. For text editor such as KWrite or maybe Kate, install theme by importing catppuccin mocha theme from `~/.config/hypr/text-editor-theme/`
9. qBittorrent should follow the qt6ct theme and doesn't need to have its own custom theme file.

##

### Spicetify
For spicetify, follow the installation method from the website.

Then, you need to change the **prefs_path** inside `~/.config/spicetify/config-xpui.ini` to your spotify path.

The **theme** and **extension** are included inside the spicetify config directory.

##

### Printer
For my usage with an Epson L3250 printer, I installed `epson-inkjet-printer-escpr` from AUR.

First install `cups` from the official arch repo if not installed.

Then check if it's enabled or not, if not enable it.
```
sudo systemctl status cups
```

```
sudo systemctl start cups
```

```
sudo systemctl enable cups # start on boot
```

Then open [http://localhost:631/admin](http://localhost:631/admin) to add your printer.

