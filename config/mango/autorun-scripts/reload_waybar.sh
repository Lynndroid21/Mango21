#!/bin/bash

killall waybar ; sleep 3 ; waybar -c ~/.config/mango/config-left.jsonc -s ~/.config/mango/lynn-style.css & waybar -c ~/.config/mango/config-right.jsonc -s ~/.config/mango/lynn-style.css & waybar -c ~/.config/mango/config.jsonc -s ~/.config/mango/lynn-style.css
