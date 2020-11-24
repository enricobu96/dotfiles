#!/bin/bash

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
# polybar -c ~/.config/polybar/config.ini main &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -c ~/.config/polybar/config.ini main &
  done
else
  polybar -c ~/.config/polybar/config.ini main &
fi
