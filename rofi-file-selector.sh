#!/bin/bash

open=$((find ~/Dropbox -type f; find ~/Cases -type f; find ~/Desktop -type f; find ~/Downloads -type f) | rofi -dmenu "$@" -l 50 -i -p "Open file" -multi-select -width 2500 -format Fq)

python quote-splitter.py "$open" | while read -r file; do ~/Code/rofi-file-selector/xdg-open-log.sh "$file" & done




#echo "${open/// \n}" | 




