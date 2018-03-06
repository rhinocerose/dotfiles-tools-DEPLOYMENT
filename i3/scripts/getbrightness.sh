#!/bin/zsh

if [ ! -f /tmp/brightness ]; then
    val=$(xrandr --verbose | grep -i brightness | head -n 1 | cut -d ' ' -f2)
    echo $val > /tmp/brightness

else
    val=$(cat /tmp/brightness)
fi

let "val = val * 100"
echo $val | cut -d '.' -f1
