#!/bin/zsh

val=$(light -G | cut -d "." -f 1)
echo "$val"
