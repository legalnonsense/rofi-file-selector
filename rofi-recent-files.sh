#!/bin/bash 

open=$(cat ~/Code/rofi-file-selector/xdg-open-log.log | rofi -dmenu "$@" -l 50 -i -p "Open file" -multi-select -width 2500)

echo "${open/// \n}" | while read -r file; do xdg-open "$file" & done

