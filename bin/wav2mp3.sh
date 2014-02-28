#!/bin/bash

# Converts all wav files in spiecfied directory to mp3.
#
# Dariusz Stefanski
# 28.02.2014

if [ $# -ne 1 ]
then
	echo "Usage: $0 dir"
	exit 1
fi
dir=$1

if [ ! -d $dir ]; then
	echo "Directory $dir doesn't exist"
	exit 1
fi

for f in $dir/*.wav; do
	echo "Converting $f"
	lame "$f"
done
