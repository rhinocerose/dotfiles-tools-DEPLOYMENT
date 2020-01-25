#!/bin/bash

# Increment (1) or decrement (0)
if [[ $1 -eq  1 ]]; then
    light -A  5
else
    light -U 5
fi

# Minimum Value
if [ "$(echo "$(light -G | cut -d "." -f 1) < 15" | bc)" -eq 1 ]; then
    light -S  30
fi
