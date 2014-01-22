#!/bin/bash

# Dariusz Stefanski
# 21.11.2013
#
# Backups Thunderbird message filters to the specified server and directory.


FILTER_FILE=msgFilterRules.dat

if [ $# -ne 2 ]
then
  echo "Usage: $0 server destDir"
  exit 1
fi
server=$1
destDir=$2

cd ~/.thunderbird
for f in `findi.sh $FILTER_FILE | grep -v \~`
do
  account=`echo $f | cut -d"/" -f4`
  scp $f $server:$destDir/${account}_$FILTER_FILE
done
