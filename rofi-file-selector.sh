#!/bin/bash

open=$((find ~/Dropbox -type f; find ~/Cases -type f; find ~/Desktop -type f; find ~/Downloads -type f) | rofi -dmenu "$@" -l 50 -i -p "Open file" -multi-select -width 2500)
echo "${open/// \n}" | while read -r file; do xdg-open-log "$file" & done
#echo "${open/// \n}" | while read -r file; do xdg-open "$file"; done#!/bin/bash

