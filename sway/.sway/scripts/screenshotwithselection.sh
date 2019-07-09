#!/bin/zsh

basename=`date +'%Y-%b-%d-%s'`
mkdir -p ~/Screenshots
sleep 0.4
scrot -q 100 -s ~/Screenshots/$basename.png

# notify that it worked
notify-send --urgency=low "Screenshot taken"
