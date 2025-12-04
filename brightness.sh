#!/usr/bin/env bash

up () {
  brightnessctl set 5%+
}

down () {
  brightnessctl set 5%-
}

usage () {
  echo "Usage: $0 <up/down>"
}

case "$1" in
  up)
    up
    ;;
  down)
    down
    ;;
  *)
    usage
    ;;
esac
