#!/bin/zsh

source ~/.extras

if [[ $MULTIMONITOR -eq 1 ]]; then
        monitor_mode="all"
        xrandr --output $MONITORSECONDARY --auto --output $MONITORPRIMARY --auto --left-of $MONITORSECONDARY
else
        monitor_mode="INTERNAL"
        xrandr --output $MONITORSECONDARY --auto --output $MONITORPRIMARY --off
fi


notify-send "$monitor_mode"

echo "${monitor_mode}" > /tmp/monitor_mode.dat
