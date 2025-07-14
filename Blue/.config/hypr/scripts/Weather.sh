#!/bin/bash

# Fetch weather data from wttr.in
WEATHER=$(curl -s "https://wttr.in/?format=%c+%t" | sed 's/+//g')

# Alternative formats you could use:
# %c - weather condition emoji
# %t - temperature
# %C - weather condition text
# %w - wind
# %p - precipitation
# %h - humidity

# For a more compact display:
# WEATHER=$(curl -s "https://wttr.in/?format=%c%20%t" | sed 's/+//g')

# Fallback in case curl fails
[ -z "$WEATHER" ] && WEATHER="⛅ --°C"

echo "$WEATHER"
