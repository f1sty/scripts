#!/usr/bin/env bash

up () {
  wpctl set-volume @DEFAULT_SINK@ 2%+
}

down () {
  wpctl set-volume @DEFAULT_SINK@ 2%-
}

mute () {
  wpctl set-mute @DEFAULT_SINK@ toggle
}

usage () {
  echo "Usage: $0 <up/down/mute>"
}

case "$1" in
  up)
    up
    ;;
  down)
    down
    ;;
  mute)
    mute
    ;;
  *)
    usage
    ;;
esac
