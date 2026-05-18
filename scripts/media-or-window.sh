#!/usr/bin/env bash

if playerctl status &>/dev/null; then
  ICON=""
  PLAYER=$(playerctl --list-all)
  if [[ "$PLAYER" == "spotify" ]]; then
	ICON=""
  fi

  playerctl metadata --format "$ICON  {{title}} - {{artist}}"
else
  hyprctl activewindow -j | jq -r '.title // empty'
fi
