#!/bin/bash

if command -v checkupdates > /dev/null; then
    pac=$(checkupdates 2> /dev/null | wc -l)
    aur=$(cower -u 2> /dev/null | wc -l)
	echo "$pac %{F#666}%{F-} $aur"

elif command -v apt-get > /dev/null; then
	apt=$(/usr/lib/update-notifier/apt-check --human-readable | head -n 1 | cut -d ' ' -f 1)
    echo "$apt %{F#666}%{F-}"
fi
