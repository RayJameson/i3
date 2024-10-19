#!/usr/bin/env bash

status_ok() {
    status=$(playerctl status)
    if [[ $status == "Stopped" || $status == "No players found" ]]; then
        return 1
    else
        return 0
    fi
}

get_song_name() {
    if status_ok; then
        song_name=$(playerctl metadata -i "firefox" -f "{{artist}} - {{trunc(title, 20)}}")
        echo " $song_name"
    else
        echo "󰎊"
    fi
}

get_song_name
