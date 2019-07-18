#!/bin/bash



open=$((find ~/Dropbox -type f; find ~/Cases -type f; find ~/Desktop -type f; find ~/Downloads -type f; find ~/Documents -type f) | rofi -dmenu "$@" -l 50 -i -p "Open file" -multi-select -width 2500 -format Fq -filter "$(cat ~/Code/rofi-file-selector/rofi-file-selector.conf)")


#open=$(locate home media | rofi -dmenu "$@" -l 50 -i -p "Open file" -multi-select -width 2500 -format Fq -filter "$(cat ~/Code/rofi-file-selector/rofi-file-selector.conf)")


if [ -z "$open" ]; then
    exit 1
else
    quote-splitter.py "$open" | while read -r file;
    do
	grep -qxF "$file" ~/Code/rofi-file-selector/xdg-open-log.log || echo "$file" >> ~/Code/rofi-file-selector/xdg-open-log.log
	xdg-open "$file" &
    done
fi
