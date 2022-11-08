#!/bin/sh
# Script to set gnome defaults to what I like

# Turn caps lock into control key
dconf write /org/gnome/desktop/input-sources/xkb-options "['ctrl:nocaps']"

# Disable F1 for help menu
dconf write /org/gnome/settings-daemon/plugins/media-keys/help "@as []"
