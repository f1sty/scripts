#!/usr/bin/env bash

while true; do
  battery="$(cat /sys/class/power_supply/BAT0/capacity)%"
  volume="$(pactl get-sink-volume "$(pactl get-default-sink)" | cut -d' ' -f 6,14,16)"
  time="$(date +'%b %d/%m/%y %A %H:%M:%S')"

  xsetroot -name "🔊 $volume | 🔋 $battery | $time"
  sleep 1 
done
