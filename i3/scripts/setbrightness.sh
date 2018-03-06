#!/bin/bash

if [ ! -f /tmp/brightness ]; then
    BRIGHTNESS=$(xrandr --verbose | grep -i brightness | cut -f2 -d ' ' | head -n1)
else
    BRIGHTNESS=$(cat /tmp/brightness)
fi

# Increment (1) or decrement (0)
if [[ $1 -eq  1 ]]; then
    BRIGHTNESS=$(echo "$BRIGHTNESS + 0.05" | bc -l)
else
    BRIGHTNESS=$(echo "$BRIGHTNESS - 0.05" | bc -l)
fi

if [ "$(echo " $BRIGHTNESS > 1.0" | bc)" -eq 1 ]; then
    BRIGHTNESS=1
fi

if [ "$(echo " $BRIGHTNESS < 0.1" | bc)" -eq 1 ]; then
    BRIGHTNESS=0.1
fi

# set it
for monitor in $( xrandr --listmonitors | grep -v "Monitor" | cut -d ' ' -f 6 ); do
    xrandr --output "$monitor" --brightness "$BRIGHTNESS"
done

# save it
echo $BRIGHTNESS > /tmp/brightness
