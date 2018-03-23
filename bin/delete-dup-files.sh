#!/bin/bash

# Removes duplicated files in the current directory.
#
# Dariusz Stefanski
# 23.03.2018

fdupes --order=time --delete --noprompt .
