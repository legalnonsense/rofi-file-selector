#!/bin/bash

open=$((find ~/Legal -type f; find ~/Dropbox -type f; find ~/Cases -type f | sort; find ~/Desktop -type f; find ~/Downloads -type f; find ~/Documents -type f) | rofi -dmenu "$@" -no-sort -l 50 -i -p "Copy path" -width 2500 -format Fq -filter "$(cat ~/Code/rofi-file-selector/rofi-file-selector.conf)")



if [ -z "$open" ]; then
    exit 1
else
    quote-splitter.py "$open" | while read -r file;
    do
	echo $file | xclip -sel clip
    done
fi
