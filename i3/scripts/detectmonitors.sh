#!/bin/zsh

source ~/.extras

# if more than 2 monitors
if [[ $(xrandr | grep connected | grep -cv disconnected) -gt 2 ]]; then
    export MULTIMONITOR=1
else
    export MULTIMONITOR=0
fi

if [[ $MULTIMONITOR -eq 1 ]]; then
        monitor_mode="all"
        xrandr --output $MONITORSECONDARY --auto --output $MONITORPRIMARY --auto --left-of $MONITORSECONDARY
else
        monitor_mode="INTERNAL"
        xrandr --output $MONITORSECONDARY --auto --output $MONITORPRIMARY --off
fi


notify-send "$monitor_mode"

echo "${monitor_mode}" > /tmp/monitor_mode.dat
