#!/usr/bin/env bash

set -xe
shopt -s expand_aliases

source $HOME/.config/bash/aliases
source $HOME/.config/bash/functions

pm -S wayland swaybg foot bemenu-wayland xorg-xwayland seatd wlroots waybar xdg-desktop-portal{-gtk,-wlr,-xapp} ydotool grim slurp
sudo systemctl enable seatd
pk
gh repo clone dwl
pk dwl
make && make PREFIX=~/.local install clean
sudo usermod -aG seat $USER 
sudo usermod -aG input $USER 
