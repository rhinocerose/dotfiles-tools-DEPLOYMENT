#!/bin/zsh

# Disable the trackpad while being locked
xinput set-prop `xinput --list | awk '/Touchpad.*pointer/ {print $6}' | sed 's/id=\(.*\)/\1/'` "Device Enabled" 0
bash -c "sleep 5 && xset dpms force off" &
i3lock -nef -c 111111
xinput set-prop `xinput --list | awk '/Touchpad.*pointer/ {print $6}' | sed 's/id=\(.*\)/\1/'` "Device Enabled" 1
