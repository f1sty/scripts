#!/usr/bin/env bash


setup_tools() {
  set -xe
  shopt -s expand_aliases

  source $HOME/.config/bash/aliases
  source $HOME/.config/bash/functions

  pm -S wayland swaybg foot bemenu-wayland xorg-xwayland seatd wlroots xdg-desktop-portal{-gtk,-wlr,-xapp} ydotool grim slurp wl-clipboard gammastep
  sudo usermod -aG seat $USER 
  sudo usermod -aG input $USER
  sudo systemctl enable seatd
}

usage() {
  echo "$0 <dwl|sway>"
}

case $1 in
  dwl)
    setup_tools
    pm -S waybar 
    pk
    gh repo clone dwl
    pk dwl
    make && make PREFIX=~/.local install clean
    ;;
  sway)
    setup_tools
    pm -S sway
    ;;
  *)
    usage
    ;;
esac
