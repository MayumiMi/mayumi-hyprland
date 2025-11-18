#!/bin/zsh

# 1. Set your wallpaper directory
DIR="$HOME/.config/hypr/wallpapers/"

# 2. Select a random file (filters for jpg, jpeg, png)
PICS=($(find "$DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" \)))
RANDOM_PIC=${PICS[$RANDOM % ${#PICS[@]}]}

# 3. Get the current wallpaper (to unload it later) optional but good for memory
# Note: This step depends on if you care about unloading.
# If you have tons of RAM, you can skip unloading.

# 4. Preload the new wallpaper
hyprctl hyprpaper preload "$RANDOM_PIC"

# 5. Set the wallpaper
# The comma after "wallpaper" means "apply to all monitors"
# If you want specific monitors, you'll need to loop through `hyprctl monitors`
hyprctl hyprpaper wallpaper ",$RANDOM_PIC"

# 6. Unload all other wallpapers to save memory
# This removes everything except the one currently being displayed
hyprctl hyprpaper unload unused
