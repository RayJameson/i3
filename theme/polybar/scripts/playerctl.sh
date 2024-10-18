#!/usr/bin/env bash

song_name=$(playerctl metadata -i "firefox" -f "{{artist}} - {{trunc(title, 20)}}")

if [[ $(playerctl status) == "Stopped" || $song_name == "No players found" ]]; then
    echo "󰎊"
    exit 0
fi

if [[ -n $song_name ]]; then
    echo " $song_name"
fi
