#!/bin/bash -x

# Dariusz Stefanski
# 22.11.2013
#
# Backups specfied folder on specified server.
# It can be used to create a snaphot of Eclipse, Intellij, and so on.

if [ $# -ne 2 ]
then
  echo "Usage: $0 dirPath server"
  exit 1
fi
dirPath=$1
server=$2

if [ ! -d $dirPath ]
then
  echo "Directory $dir doesn't exist"
  exit 1
fi

dirName=`basename $dirPath`
timestamp=`date +"%Y.%m.%d-%H.%I"`
archiveName="$dirName-${timestamp}.zip"
archivePath="/tmp/$archiveName"

zip -r $archivePath $dirPath
scp "$archivePath" $server:~/
