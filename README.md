* What does it do?
Searches for files using the file’s full path and opens them with xdg-open

Automatically saves previous search and opens rofi with the same search text

Logs files opened and enables access to recent files via rofi-recent-files.sh
* Installation

Make sure the following are executable and in your PATH:
- quote-splitter.py
- rofi-file-selector.sh
- rofi-recent-files.sh
- xdg-open-log.sh

Currently, the log files are assumed to be in ~/Code/rofi-file-selector

The log files are:
- xdg-open-log.log
- rofi-file-selector.conf
* FAQ

Q. Why is there a python script?
A. Because I couldn’t figure out how to parse Rofi’s output in Bash quickly, I got frustrated, and I used whatever worked. 

Q. Do you know your code sucks?
A. Yup. 
