#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally
icon=""

player_status=$(playerctl -i chromium status 2> /dev/null)

# no output if error
# shellcheck disable=SC2181
if [[ $? -gt 0 ]]; then
   echo ""
   exit
fi

metadata="$(playerctl -i chromium metadata artist) - $(playerctl -i chromium metadata title)"

# shellcheck disable=SC2181
if [[ $? -eq 0 ]]; then
    # Foreground color formatting tags are optional
    if [[ $player_status = "Playing" ]]; then
        echo "%{F#D08770}$icon $metadata" # Orange when playing
    elif [[ $player_status = "Paused" ]]; then
        echo "%{F#65737E}$icon $metadata" # Greyed out info when paused
    else
        echo "%{F#65737E}$icon" # Greyed out icon when stopped
    fi

else
    echo ""
fi
