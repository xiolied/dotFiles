#!/usr/bin/env sh

# Check if waybar process exists
if pgrep -x waybar > /dev/null; then
    pkill -x waybar
else
    waybar > /dev/null 2>&1 &
fi
