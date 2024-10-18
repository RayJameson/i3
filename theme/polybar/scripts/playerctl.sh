#!/usr/bin/env bash

song_name=$(playerctl metadata -f "{{artist}} - {{trunc(title, 20)}}")
if [[ -n $song_name ]]; then
    echo "$song_name"
fi
