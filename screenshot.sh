#!/bin/bash

# [[ -n $DISPLAY ]] && flameshot gui || XDG_CURRENT_DESKTOP=Sway flameshot gui
XDG_CURRENT_DESKTOP=sway QT_QPA_PLATFORM=wayland flameshot gui
# slurp | grim -g - - | tee ~/media/images/screenshots/$(date +%s).png | wl-copy
