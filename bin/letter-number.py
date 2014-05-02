#!/usr/bin/python

# Dariusz Stefanski
# 01.05.2014
# Prints number of letter in alphabet

import sys

if len(sys.argv) != 2:
    sys.exit("Usage: %s letter" % sys.argv[0])

letter=sys.argv[1]
number = ord(letter) - ord('a') + 1

print number

