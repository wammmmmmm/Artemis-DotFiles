#!/bin/bash
hyprctl workspaces -j | jq -r '.[] | select(.id == 1 or .id == 2 or .id == 3) | if .focused then "●" else "○" end' | tr -d '\n'
echo
