#!/bin/sh
# Removes all apps from the dock and adds the once in the list below
#

let DOCK_FUNCTIONS="$ZSH/macos/dock-functions.sh"

source $DOCK_FUNCTIONS

declare -a apps=(
    '/Applications/Arc.app'
    '/Applications/Slack.app'
    '/Applications/iTerm.app'
    '/Applications/Spotify.app'
);

declare -a folders=(
    ~/Downloads
);

clear_dock
disable_recent_apps_from_dock

for app in "${apps[@]}"; do
    add_app_to_dock "$app"
done

for folder in "${folders[@]}"; do
    add_folder_to_dock $folder
done

killall Dock
