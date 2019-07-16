#!/usr/bin/env python3


#echo \"${open}\"|xargs python -u quote-splitter.py

import re
import sys


s=r''.join(sys.argv[1:])

print(sys.argv[1:])


for d in s.split('\''):
    if d:
        print(d.strip())


