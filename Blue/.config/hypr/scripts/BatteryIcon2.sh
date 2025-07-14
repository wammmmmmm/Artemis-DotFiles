
#!/bin/bash

# Get battery info
BAT_PATH="/sys/class/power_supply/BAT0"
[ ! -d "$BAT_PATH" ] && BAT_PATH="/sys/class/power_supply/BAT1"

CAPACITY=$(cat "$BAT_PATH/capacity" 2>/dev/null || echo "0")
STATUS=$(cat "$BAT_PATH/status" 2>/dev/null || echo "Discharging")

if [ "$STATUS" = "Charging" ]; then
    echo "󰂄  $CAPACITY%"
else
    if [ "$CAPACITY" -gt 90 ]; then
        echo "󰁹  $CAPACITY%"
    elif [ "$CAPACITY" -gt 80 ]; then
        echo "󰂂  $CAPACITY%"
    elif [ "$CAPACITY" -gt 70 ]; then
        echo "󰂁  $CAPACITY%"
    elif [ "$CAPACITY" -gt 60 ]; then
        echo "󰂀  $CAPACITY%"
    elif [ "$CAPACITY" -gt 50 ]; then
        echo "󰁿  $CAPACITY%"
    elif [ "$CAPACITY" -gt 40 ]; then
        echo "󰁽  $CAPACITY%"
    elif [ "$CAPACITY" -gt 30 ]; then
        echo "󰁼  $CAPACITY%"
    elif [ "$CAPACITY" -gt 20 ]; then
        echo "󰁻  $CAPACITY%"
    elif [ "$CAPACITY" -gt 10 ]; then
        echo "󰁺  $CAPACITY%"
    else
        echo "󰂎  $CAPACITY%"
    fi
fi
