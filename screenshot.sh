#!/bin/bash

[[ -n $DISPLAY ]] && flameshot gui || XDG_CURRENT_DESKTOP=Sway flameshot gui
