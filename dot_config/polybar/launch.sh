#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar.log

# Find all monitors
if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload main --config=~/.config/polybar/config.ini 2>&1 | tee -a /tmp/polybar.log &
    done
else
    polybar --reload main --config=~/.config/polybar/config.ini 2>&1 | tee -a /tmp/polybar.log &
fi

# polybar main --config=~/.config/polybar/config.ini 2>&1 | tee -a /tmp/polybar.log &
# polybar mainbar-i3 --config=~/.config/polybar/config.ini 2>&1 | tee -a /tmp/polybar.log &
disown

echo "Bar launched..."
