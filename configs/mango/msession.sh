#!/bin/bash

kitty "$HOME/.config/mango/autorun-scripts/btop.sh" & disown

sleep 1

kitty "$HOME/.config/mango/autorun-scripts/cmatrix.sh" & disown

sleep 1

kitty "$HOME/.config/mango/autorun-scripts/cava.sh" & disown

sleep 1

mmsg -t 2

sleep 1

mmsg -d spawn,com.opera.Opera

sleep 7

mmsg -t 3

sleep 1

mmsg -d spawn,app.zen_browser.zen

sleep 7

# mmsg -d spawn_shell,"/home/krrj21/.config/mango/autorun-scripts/edit_term.sh" &

kitty &

sleep 1

# kitty &

mmsg -d spawn,kate

sleep 2

mmsg -d spawn,dolphin

sleep 2

kitty &

sleep 1

mmsg -t 4

sleep 1

mmsg -d spawn,dev.aunetx.deezer

sleep 7

mmsg -t 5

sleep 1

mmsg -d spawn,kitty

sleep 1

mmsg -t 6

sleep 1

mmsg -d spawn,org.localsend.localsend_app

sleep 4

mmsg -t 7

sleep 1

mmsg -d spawn,net.cozic.joplin_desktop

sleep 7

mmsg -t 1
