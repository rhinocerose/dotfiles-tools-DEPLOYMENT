#!/bin/bash

# shellcheck source=/dev/null
source ~/.exports

count=$(pgrep -fc "$BROWSER")

# If theres an instance already
if [ "$count" -gt 0 ]; then
    i3-msg "[class=$BROWSERWINDOWCLASS] focus"
# None exists, start a new one
else
    # shellcheck disable=SC2091
    $(env "$BROWSER")
fi
