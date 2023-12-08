#!/usr/bin/env bash

KBD_BACKLIGHT="/sys/class/leds/:white:kbd_backlight"
case $1 in
  on)
    cat "${KBD_BACKLIGHT}/max_brightness" | sudo tee "${KBD_BACKLIGHT}/brightness";;
  off)
    echo 0 | sudo tee "${KBD_BACKLIGHT}/brightness";;
esac
