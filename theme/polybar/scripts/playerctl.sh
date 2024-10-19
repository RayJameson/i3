#!/usr/bin/env bash

status_ok() {
    status=$(playerctl status 2> /dev/null)
    if [[ $status == "Stopped" || -z $status ]]; then
        return 1
    else
        return 0
    fi
}

get_song_name() {
    if status_ok; then
        song_name=$(playerctl metadata -i "firefox" -f "{{artist}} - {{trunc(title, 20)}}" 2> /dev/null)
        echo " $song_name"
    else
        echo "󰎊"
    fi
}

get_song_name
