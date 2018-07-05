#!/bin/bash

# Find big files and displays in format:
# name: size
#
# Author: Dariusz Stefanski
# Date:   27.03.2014

if [ $# -ne 1 ]
then
  echo "Usage: $0 sizeThresold[MB]"
  exit
fi

sizeThreshold=$1

find . -type f -size +${sizeThreshold}M -exec ls -lh {} \; | awk '{ print $9 ": " $5 }'
