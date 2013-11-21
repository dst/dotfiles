#!/bin/bash -x

# Dariusz Stefanski
# 21.11.2013
#
# Backups Thunderbird message filters to the specified server.


FILTER_FILE=msgFilterRules.dat

if [ $# -ne 1 ]
then
  echo "Usage: $0 server"
  exit 1
fi
server=$1

cd ~/.thunderbird
for f in `findi.sh $FILTER_FILE`
do
  account=`echo $f | cut -d"/" -f4`
  scp $f $server:${account}_$FILTER_FILE
done
