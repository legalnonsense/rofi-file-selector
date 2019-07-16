#!/bin/bash

#have to add this to .bashrc to make permanent 
#alias xdg-open='xdg-open-log.sh'


#echo to the file to the log
grep -qxF "$@" ~/Code/xdg-open-log/xdg-open-log.log || echo "$@" >> ~/Code/xdg-open-log/xdg-open-log.log
#echo "$@" >> ~/Code/xdg-open-log/xdg-open-log.log
#open the file
xdg-open "$@"

