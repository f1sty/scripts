#!/usr/bin/env bash
# Copyright © 2023 Yurii <f1sty> Skrynnykov. All Rights Reserved.

KBD_BACKLIGHT="/sys/class/leds/:white:kbd_backlight"
SCREEN_BACKLIGHT="/sys/class/backlight/gmux_backlight"
MAX_KBD_BRIGHTNESS=$(cat "${KBD_BACKLIGHT}/max_brightness")
MAX_SCREEN_BRIGHTNESS=$(cat "${SCREEN_BACKLIGHT}/max_brightness")
STEP=2

kbd_brightness() {
  echo $((${MAX_SCREEN_BRIGHTNESS} * $1 / 100))
}

screen_brightness() {
  CURRENT_BRIGHTNESS=$(cat "${SCREEN_BACKLIGHT}/brightness")
  ADJUST_VALUE=$((${MAX_SCREEN_BRIGHTNESS} * ${STEP} / 100))
  case $1 in
    up)
      echo $((CURRENT_BRIGHTNESS + ADJUST_VALUE)) ;;
    down)
      echo $((CURRENT_BRIGHTNESS - ADJUST_VALUE));;
    *)
      echo $((${MAX_SCREEN_BRIGHTNESS} * $1 / 100));;
  esac
}

case $1 in
  kbd_on)
    kbd_brightness 80 | sudo tee "${KBD_BACKLIGHT}/brightness";;
  kbd_off)
    kbd_brightness 0 | sudo tee "${KBD_BACKLIGHT}/brightness";;
  screen_dim)
    screen_brightness 20 | sudo tee "${SCREEN_BACKLIGHT}/brightness";;
  screen_full)
    screen_brightness 100 | sudo tee "${SCREEN_BACKLIGHT}/brightness";;
  screen_up)
    screen_brightness up | sudo tee "${SCREEN_BACKLIGHT}/brightness";;
  screen_down)
    screen_brightness down | sudo tee "${SCREEN_BACKLIGHT}/brightness";;
esac
