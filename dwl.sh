#!/usr/bin/env sh
# export XDG_RUNTIME_DIR=/tmp/xdg-runtime-$(id -u)
# mkdir -p $XDG_RUNTIME_DIR
exec dbus-run-session -- dwl -s "autostart.sh"
# -s "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP" \
# -s "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP" \
# -s "/usr/bin/waybar 2>logile"
# -s "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1" \
# -s "waybar-dwl.sh"
