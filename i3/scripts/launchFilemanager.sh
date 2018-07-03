#!/bin/bash

# shellcheck source=/dev/null
source ~/.exports

count=$(pgrep -fc "$FILEMANAGER")

# If theres an instance already
if [ "$count" -gt 0 ]; then
    i3-msg "[title=$FILEMANAGERWINDOWNAME] focus"
# None exists, start a new one
else
    exec termite -e "$FILEMANAGER"
fi

# Use this for nautilus:
# count=$(pgrep -fc "$FILEMANAGER")
#
# # If theres an instance already
# if [ "$count" -gt 0 ]; then
#     i3-msg "[class=$FILEMANAGERWINDOWCLASS] focus"
# # None exists, start a new one
# else
#         # shellcheck disable=SC2091
#     $(env "$FILEMANAGER")
# fi
