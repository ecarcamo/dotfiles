#!/bin/bash

dbus-monitor "interface='org.freedesktop.Notifications',member='Notify'" |
while read -r line; do
    if echo "$line" | grep -q "Spotify"; then
        notify-send -t 3000 "$(playerctl metadata title)" "$(playerctl metadata artist)"
    fi
done

