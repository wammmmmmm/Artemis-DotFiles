# Get battery info
BAT_PATH="/sys/class/power_supply/BAT0"
[ ! -d "$BAT_PATH" ] && BAT_PATH="/sys/class/power_supply/BAT1"

CAPACITY=$(cat "$BAT_PATH/capacity" 2>/dev/null || echo "0")
STATUS=$(cat "$BAT_PATH/status" 2>/dev/null || echo "Discharging")

# Select icon based on status and capacity
if [ "$STATUS" = "Charging" ]; then
    echo "M"  # Lightning bolt for charging

fi


