#!/bin/sh
# Script to set gnome defaults to what I like

settings set org.gnome.desktop.input-sources show-all-sources true

# Turn caps lock into control key (see `man xkeyboard-config`)
# A note - this is fine with QWERTY, but Colemak in xkb turns caps lock into
# backspace in addition to control, which is awful. I'll see about upstreaming
# fixes into xkeyboard-config, but I've already spent enough of my life on this
# dconf write /org/gnome/desktop/input-sources/xkb-options "['ctrl:nocaps']"

# Disable F1 for help menu
dconf write /org/gnome/settings-daemon/plugins/media-keys/help "@as []"
