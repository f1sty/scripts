#!/usr/bin/env sh
dwl \
-s "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP" \
-s "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP" \
-s "waybar"
