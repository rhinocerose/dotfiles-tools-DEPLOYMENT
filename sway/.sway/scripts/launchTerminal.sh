#!/bin/bash

# shellcheck source=/dev/null
source ~/.exports

count=$(pgrep -fc "$TERMINAL")

# If theres a terminal already
if [ "$count" -gt 0 ]; then
    # if terminal already focused: always open a new instance
    if [[ -n $(swaymsg -t get_tree | jq ".. | (.nodes? // empty)[] | select(.focused==true) | select(.app_id == \"$TERMINAL\") | .app_id") ]]; then
		# shellcheck disable=SC2091
        $(env "$TERMINAL")

    # else just focus
    else
        swaymsg "[app_id=$TERMINAL] focus"
    fi

# None exists, start a new one
else
	# shellcheck disable=SC2091
    $(env "$TERMINAL")
fi
