#!/bin/bash

killall waybar ; sleep 3 ; waybar -c ~/.config/waybar/config-left.jsonc -s ~/.config/waybar/default21-style.css & waybar -c ~/.config/waybar/config-right.jsonc -s ~/.config/waybar/default21-style.css & waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/default21-style.css
