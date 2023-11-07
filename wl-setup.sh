#!/usr/bin/env bash

usage() {
  echo "$0 <dwl|sway>"
}

setup_tools() {
    set -xe
    sudo pacman -S wayland swaybg foot bemenu-wayland xorg-xwayland seatd wlroots xdg-desktop-portal{-gtk,-wlr,-xapp} ydotool grim slurp wl-clipboard gammastep imv
    sudo usermod -aG seat $USER 
    sudo usermod -aG input $USER
    sudo systemctl enable seatd
}

case $1 in
  dwl)
    setup_tools
    sudo pacman -S waybar 
    cd $HOME/pkgs
    gh repo clone dwl
    cd $HOME/pkgs/dwl
    make && make PREFIX=~/.local install clean
    ;;
  sway)
    setup_tools
    sudo pacman -S sway
    ;;
  *)
    usage
    ;;
esac
