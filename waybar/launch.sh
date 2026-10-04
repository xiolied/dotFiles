#!/usr/bin/env sh
# Waybar launcher — follows the active theme variant.
# The variant is set by theme-switch.sh (see ~/.config/hypr/theme-switch.sh).

VARIANT="$(cat "$HOME/.config/waybar/current-variant" 2>/dev/null || echo center-workspaces)"
CONFIG="$HOME/.config/waybar/$VARIANT/config.jsonc"
STYLE="$HOME/.config/waybar/$VARIANT/style.css"

# Check if waybar process exists
if pgrep -x waybar > /dev/null; then
    pkill -x waybar
else
    waybar -c "$CONFIG" -s "$STYLE" > /dev/null 2>&1 &
fi
