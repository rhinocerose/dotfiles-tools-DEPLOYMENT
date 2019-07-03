#!/bin/bash

# Increment (1) or decrement (0)
if [[ $1 -eq  1 ]]; then
    xbacklight -inc 10
else
    xbacklight -dec 10
fi

# Minimum Value
if [ "$(echo "$(xbacklight -get) < 30" | bc)" -eq 1 ]; then
    xbacklight -set 30