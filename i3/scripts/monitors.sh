#!/bin/bash

# shellcheck source=/dev/null
source ~/.extras

# if we don't have a file, start at zero
if [ ! -f "/tmp/monitor_mode.dat" ] ; then
  monitor_mode="all"

# otherwise read the value from the file
else
  monitor_mode=$(cat /tmp/monitor_mode.dat)
fi

if [ "$monitor_mode" = "all" ]; then
        monitor_mode="EXTERNAL"
        xrandr --output "$MONITORSECONDARY" --off --output "$MONITORPRIMARY" --auto
elif [ "$monitor_mode" = "EXTERNAL" ]; then
        monitor_mode="INTERNAL"
        xrandr --output "$MONITORSECONDARY" --auto --output "$MONITORPRIMARY" --off
elif [ "$monitor_mode" = "INTERNAL" ]; then
        monitor_mode="CLONES"
        xrandr --output "$MONITORSECONDARY" --auto --output "$MONITORPRIMARY" --auto --same-as "$MONITORSECONDARY"
else
        monitor_mode="all"
        xrandr --output "$MONITORSECONDARY" --auto --output "$MONITORPRIMARY" --auto --left-of "$MONITORSECONDARY"
fi

notify-send "$monitor_mode"

echo "${monitor_mode}" > /tmp/monitor_mode.dat
