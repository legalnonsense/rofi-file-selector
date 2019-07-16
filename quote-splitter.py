#!/usr/bin/env python3

import re
import sys

s=r''.join(sys.argv[1:])

#s="'asdfa  ''23 23'"

strings = s.split('\'')
last_query = strings[1].strip()
file_names = []

for s in strings[1:]:
    if (s==last_query) or (s.strip()==''):
        pass
    else:
        if (s.strip() != ''):
            file_names.append(s)

if last_query:            
    with open("/home/jeff/Code/rofi-file-selector/rofi-file-selector.conf", "w") as f:
        f.write(last_query + " ")
                    
# print(last_query)
# print (file_names)

for name in file_names:
    sys.stdout.write(name)
    sys.stdout.write("\n")


