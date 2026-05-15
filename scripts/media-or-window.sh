#!/usr/bin/env bash

if playerctl status &>/dev/null; then
  playerctl metadata --format " {{title}} - {{artist}}"
else
  hyprctl activewindow -j | jq -r '.title // empty'
fi
