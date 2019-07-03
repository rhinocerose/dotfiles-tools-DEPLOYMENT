#!/bin/bash

# get the configuration
# shellcheck source=/dev/null
source ~/.extras

# if more than 2 monitors
if [[ $(xrandr | grep connected | grep -v disconnected | wc -l) -gt 2 ]]; then
    export MULTIMONITOR=1
else
    export MULTIMONITOR=0
fi

# properly set $TERM
# shellcheck source=/dev/null
source ~/.exports

# This directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar(s)
if [[ $MULTIMONITOR -eq 1 ]]; then
    polybar -c "$DIR"/config top-primary &
    polybar -c "$DIR"/config top-secondary &
else
	# shellcheck disable=SC2034
    MONITORPRIMARY=$MONITORSECONDARY
    polybar -c "$DIR"/config top-primary &
fi

echo "Bars launched..."
