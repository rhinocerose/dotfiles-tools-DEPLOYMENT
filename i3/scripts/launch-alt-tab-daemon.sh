#!/bin/bash

kill "$(pgrep -f 'alt-tab.py')"
python3 "$HOME"/.i3/scripts/alt-tab.py
