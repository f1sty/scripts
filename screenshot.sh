#!/bin/bash

grim -g "$(slurp)" $HOME/media/images/screenshots/$(date +'%F_%s.png')
# XDG_CURRENT_DESKTOP=Sway flameshot gui
# scrot -is '%Y-%m-%d_%T_$wx$h.png' -e 'optipng $f && mv $f ~/media/images/screenshots/'
