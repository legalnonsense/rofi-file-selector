#!/usr/bin/env python3
import sys
from os.path import expanduser

s=r''.join(sys.argv[1:])
s = s.replace(r"'\''", r"'")

ts=s.split('\n')
strings=[]

for x in range(len(ts)):
    for s in ts[x].split("''"):
        strings.append(s)
                   

for x in range(len(strings)):

    strings[x] = strings[x].strip()

    try: 
        if strings[x][0] == "'":
            strings[x]=strings[x][1:]
        if strings[x][-1] == "'":
            strings[x]=strings[x][:-1]
    except: pass 

    #strings[x] = "'" + strings[x] + "'"
    
last_query = strings[0].strip()
file_names = []

for ss in strings[1:]:
    if (ss.strip()==last_query) or (ss.strip()==''):
        pass
    else:
        file_names.append(ss)

if last_query:
    with open(expanduser("~") + "/Code/rofi-file-selector/rofi-file-selector.conf", "w") as f:
        f.write(last_query + " ")

for name in file_names:
    sys.stdout.write(name)
    sys.stdout.write("\n")



