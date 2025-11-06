# mayumi-hyprland
Dotfiles for my hyprland rice
<img width="1920" height="1080" alt="2025-11-07-025640_hyprshot" src="https://github.com/user-attachments/assets/75fd2c15-5772-47c1-ad19-d52dae5d12d3" />

<img width="1920" height="1080" alt="2025-11-07-025814_hyprshot" src="https://github.com/user-attachments/assets/12799888-66ab-4b2d-9409-cdd53b2f2e5c" />


run ./stow.sh

oh-my-zsh is used for zsh customization

Username mayumi is recommended, since some of the config file such as for the packages below doesn't seem to support ~/ or $HOME/ file path
1. glow glow.yml
2. wofi style.css

GTK themes (both 3.0 and 4.0) are handled by nwg-look
Install catppuccin-cursors-mocha (will also be used later by hyprcursor) & catppuccin-gtk-theme-git and configure it inside nwg-look

Qt are handled by qt6ct and kvantum
Add env = env = QT_QPA_PLATFORMTHEME,qt6ct to hyprland.config
Then, set the theme inside kvantum to catppuccin
There should already be catppuccin-mocha-lavender theme inside ~/.config/Kvantum/
Inside qt6ct, set style to kvantum-dark and color scheme to KvDark (since Style's color doesn't work with Dolphin for some reason)
You can also set the font for Qt apps, I use Noto Sans size 11
Icon theme for Dolphin are papirus-folders-catppuccin-git
Set it by qt6ct > Icon Theme and choose Papirus-Dark
For text editor such as KWrite or maybe Kate, install theme by importing catppuccin mocha theme from ~/.config/hypr/text-editor-theme/
qBittorrent should follow the qt6ct theme and doesn't need to have its own custom theme file

For spicetify, follow the installation method from the website
You need to change the prefs_path inside ~/.config/spicetify/config-xpui.ini to your spotify path

For the fonts, just check each config and install accordingly
1. ttf-iosevka-nerd
2. ttf-jetbrains-mono-nerd
3. ttf-caskaydia-mono-nerd
4. ttf-font
5. noto-fonts
6. noto-fonts-cjk
7. noto-fonts-emoji
8. otf-font-awesome
