#!/bin/sh

# amixer get Master | tail -1 | cut -d' ' -f7 | sed -e 's/[][]//g'
# pamixer --get-volume-human
pactl get-sink-volume 0 | head -1 | cut -d'/' -f2,4 | sed 's/\s//g' | tr -d '\n'
