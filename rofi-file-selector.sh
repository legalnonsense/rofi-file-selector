#!/bin/bash

open=$((find ~/Dropbox -type f; find ~/Cases -type f; find ~/Desktop -type f; find ~/Downloads -type f) | rofi -dmenu "$@" -l 50 -i -p "Open file" -multi-select -width 2500 -format Fq)

echo \"${open}\" | xargs python -u quote-splitter.py

#echo "${open/// \n}" | while read -r file; do xdg-open-log.sh "$file" & done




