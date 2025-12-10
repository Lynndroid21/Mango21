waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/default21-style.css >/dev/null 2>&1 &
waybar -c ~/.config/waybar/config-left.jsonc -s ~/.config/waybar/default21-style.css >/dev/null 2>&1 &
waybar -c ~/.config/waybar/config-right.jsonc -s ~/.config/waybar/default21-style.css >/dev/null 2>&1 &

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 >/dev/null 2>&1 &
waypaper --restore >/dev/null 2>&1 &

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots
# The next line of command is not necessary. It is only to avoid some situations where it cannot start automatically
/usr/lib/xdg-desktop-portal-wlr &

# Screenshot tool
flameshot &

# keep clipboard content
wl-clip-persist --clipboard regular --reconnect-tries 0 &

# clipboard content manager
wl-paste --type text --watch cliphist store &

# Session reload
#~/.config/mango/msession.sh >/dev/null 2>&1 &

swaync -c ~/.config/swaync/config.json -s ~/.config/swaync/Arch21-style.css &
