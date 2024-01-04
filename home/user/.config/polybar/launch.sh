#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar top -c ~/.config/polybar/config.ini &

# Check if external monitor is connected
external_monitor=$(xrandr --query | grep 'DisplayPort-1-3')

if [[ $external_monitor = *connected* ]]; then
	polybar top_external -c ~/.config/polybar/config.ini &
fi
