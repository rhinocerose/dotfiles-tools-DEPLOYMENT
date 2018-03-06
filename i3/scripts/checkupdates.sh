#!/bin/bash

if which checkupdates > /dev/null; then
    pac=$(checkupdates 2> /dev/null | wc -l)
    aur=$(cower -u 2> /dev/null | wc -l)
	echo "$pac %{F#666}%{F-} $aur"

elif which apt-get > /dev/null; then
	apt=$(/usr/lib/update-notifier/apt-check --human-readable | head -n 1 | cut -d ' ' -f 1)
    echo "$apt %{F#666}%{F-}"
fi
