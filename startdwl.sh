#!/usr/bin/env sh
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
slstatus -s | dwl -s "$HOME/scripts/autostart.sh"
