#!/usr/bin/env bash

song_name=$(playerctl metadata -i "firefox" -f "{{artist}} - {{trunc(title, 20)}}")
if [[ -n $song_name && $song_name != "No players found" ]]; then
    echo " $song_name"
else
    echo "󰎊"
fi
