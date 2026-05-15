#!/usr/bin/env bash

playerctl --follow metadata 2>/dev/null | while read -r _; do
  pkill -RTMIN+8 waybar
done &

SOCKET="$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock"

socat -U - UNIX-CONNECT:"$SOCKET" | while read -r line; do
  case "$line" in
  activewindow* | openwindow* | closewindow*)
    pkill -RTMIN+8 waybar
    ;;
  esac
done
