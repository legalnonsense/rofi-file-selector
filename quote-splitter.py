#!/usr/bin/env python3

import re
import sys
import subprocess 

s=r''.join(sys.argv[1:])

strings = s.split('\'')
last_query = strings[1].strip()
file_names = []

for s in strings:
    if (s==last_query) or (s.strip()==''):
        pass
    else:
        if (s.strip() != ''):
            file_names.append(s)

print(last_query)
print (file_names)
