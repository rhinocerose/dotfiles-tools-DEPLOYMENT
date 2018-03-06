#!/bin/bash

rm ~/Wallpapers/current
wget -q https://source.unsplash.com/1920x1080/?nature -O ~/Wallpapers/current

# shellcheck disable=SC2181
if [[ $? -eq 0  ]]; then
    feh --bg-scale ~/Wallpapers/current
fi
