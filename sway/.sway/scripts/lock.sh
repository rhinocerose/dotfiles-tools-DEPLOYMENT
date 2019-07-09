#!/bin/zsh
swaylock -eF -c 111111 &
sleep 5
# Screen Off
swayidle timeout 1 'swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"; pkill -n swayidle'
