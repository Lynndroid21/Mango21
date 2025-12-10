#!/bin/bash

WALLPAPER="~/.config/swaync/bash-scripts/theme-switch/Dark.jpg"
LightModeSwaync=0

swaybg -i $WALLPAPER

wal -i $WALLPAPER

echo "LightModeSwaync == $LightModeSwaync" >/dev/null 2>&1 &
