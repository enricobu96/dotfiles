#!/bin/bash
xrandr --newmode "1920x1080_72.00"  210.25  1920 2056 2256 2592  1080 1083 1088 1128 -hsync +vsync
xrandr --addmode DP2-2 1920x1080_72.00
xrandr --output eDP1 --mode 1920x1080 --pos 0x528 --rotate normal --output DP1 --off --output DP2 --off --output DP2-1 --off --output DP2-2 --primary --mode 1920x1080_72.00 --pos 1920x0 --rotate normal --output DP2-3 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
