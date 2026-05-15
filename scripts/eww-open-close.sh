#!/bin/bash

WINDOW=$1
EWW_BIN=$2

if [[ "$WINDOW" == "" ]]; then
	echo "Usage: ./eww-open-close.sh WINDOW"
	exit 1
fi

if [[ "$EWW_BIN" == "" ]]; then
	EWW_BIN=/usr/bin/eww
fi

if ${EWW_BIN} active-windows | grep -q "$WINDOW"; then
	${EWW_BIN} close "$WINDOW"
else 
	${EWW_BIN} open "$WINDOW"
fi
