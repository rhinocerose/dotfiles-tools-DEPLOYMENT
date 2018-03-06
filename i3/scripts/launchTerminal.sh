#!/bin/bash

# shellcheck source=/dev/null
source ~/.exports

count=$(pgrep -fc "$TERMINAL")

# If theres a terminal already
if [ "$count" -gt 0 ]; then
    # if terminal already focused: always open a new instance
    if [[ $(xprop -id "$(xdotool getactivewindow)" | grep WM_CLASS | grep -v grep | cut -d ' ' -f 3 | tr -d '",' ) == "$TERMINAL" ]]; then
		# shellcheck disable=SC2091
        $(env "$TERMINAL")

    # else just focus
    else
        i3-msg "[class=$TERMINALWINDOWCLASS] focus"
    fi

# None exists, start a new one
else
	# shellcheck disable=SC2091
    $(env "$TERMINAL")
fi
