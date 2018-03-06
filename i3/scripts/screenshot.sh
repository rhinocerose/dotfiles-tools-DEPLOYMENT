#!/bin/zsh

basename=`date +'%Y-%b-%d-%s'`
mkdir -p ~/Screenshots
sleep 0.4
scrot -q 100 ~/Screenshots/$basename.png
