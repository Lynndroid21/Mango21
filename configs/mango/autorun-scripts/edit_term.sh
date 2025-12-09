#!/bin/bash

command clear

# kitty -e 'echo "sleep 1 & mmsg -d togglefloating ; mmsg -d resizewin,2375,170 ; mmsg -d movewin,91,1263 ; hyfetch"'

# kitty

# sleep 1

mmsg -d togglefloating

mmsg -d resizewin,2375,170

mmsg -d movewin,91,1263

# tmux

hyfetch

exit
