# mayumi-hyprland
Dotfiles for my Hyprland rice.

---

<img width="1920" height="1080" alt="2025-11-07-025640_hyprshot" src="https://github.com/user-attachments/assets/75fd2c15-5772-47c1-ad19-d52dae5d12d3" />

---

<img width="1920" height="1080" alt="2025-11-07-025814_hyprshot" src="https://github.com/user-attachments/assets/12799888-66ab-4b2d-9409-cdd53b2f2e5c" />

---

## Usage
After installing Hyprland and installing the required packages from the wiki.

Clone this repo to your /home directory and then run `./stow.sh`

Make sure to backup and delete your current configuration files.

## Steps before using

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

### Fonts
What I have installed in my system are as follows.
- ttf-iosevka-nerd
- ttf-jetbrains-mono-nerd
- ttf-caskaydia-mono-nerd
- ttf-font
- noto-fonts
- noto-fonts-cjk
- noto-fonts-emoji
- otf-font-awesome

Fonts install:

```bash
yay -S ttf-iosevka-nerd ttf-jetbrains-mono-nerd ttf-caskaydia-mono-nerd ttf-font noto-fonts noto-fonts-cjk noto-fonts-emoji otf-font-awesome
```

