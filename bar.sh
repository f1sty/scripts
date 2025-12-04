#!/usr/bin/env bash

while true; do
  battery="$(cat /sys/class/power_supply/BAT0/capacity)%"
  volume="$(wpctl get-volume @DEFAULT_SINK@ | cut -d':' -f2)"
  volume=$(echo "$volume * 100" | bc)
  time="$(date +'%b %d/%m/%y %A %H:%M')"

  xsetroot -name "  🔊 $volume% | 🔋 $battery | $time "
  sleep 3 
done
