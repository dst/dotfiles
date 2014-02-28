#!/bin/bash

# Downloads English Cafe podcasts from
# English as a Second Language (esl) website
#
# Dariusz Stefanski
# 26.02.2014

URL_PREFIX="http://libsyn.com/media/eslpod/EC"

if [ $# -ne 2 ]
then
	echo "Usage: $0 from to"
	exit
fi
from=$1
to=$2

range=`eval echo {$from..$to}`
for nr in $range; do
    echo $nr
    url="${URL_PREFIX}${nr}.mp3"
    echo "Downloading $url"
    wget $url
done