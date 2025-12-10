#!/bin/bash

WALLPAPER="~/.config/swaync/bash-scripts/theme-switch/Light.png"
LightModeSwaync=1

swaybg -i $WALLPAPER

wal -i $WALLPAPER

echo "LightModeSwaync == $LightModeSwaync" >/dev/null 2>&1 &
