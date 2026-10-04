#!/usr/bin/env bash
# Area screenshot: select with slurp, capture with grim, annotate with satty.
# Copy (Ctrl+C) notifies immediately; save (Ctrl+S) stores to
# ~/Pictures/Screenshots with a timestamped name and notifies with the path.
set -euo pipefail

SCREENSHOT_DIR="$HOME/Pictures/Screenshots"
mkdir -p "$SCREENSHOT_DIR"

# Area selection (Esc cancels -> notify and exit quietly)
if ! GEOM="$(slurp)" || [[ -z "$GEOM" ]]; then
    notify-send "Process canceled"
    exit 0
fi

# Marker to detect files saved while satty is open
STAMP="$(mktemp)"
touch "$STAMP"
COPY_MARK="$STAMP.copied"

grim -g "$GEOM" - | satty \
    --filename - \
    --output-filename "$SCREENSHOT_DIR/screenshot-%Y%m%d-%H%M%S.png" \
    --copy-command "sh -c 'wl-copy --type image/png && touch $COPY_MARK && setsid -f notify-send Screenshot \"Copied to clipboard\"'" \
    --disable-notifications \
    --early-exit all \
    --corner-roundness 0

# If a new file appeared while satty was open, it was saved -> notify
NEW_FILE="$(find "$SCREENSHOT_DIR" -maxdepth 1 -type f -newer "$STAMP" -print -quit)"
rm -f "$STAMP"

if [[ -n "${NEW_FILE:-}" ]]; then
    notify-send "Screenshot saved" "$NEW_FILE"
elif [[ ! -f "$COPY_MARK" ]]; then
    notify-send "Process canceled"
fi
rm -f "$COPY_MARK"
