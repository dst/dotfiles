#!/bin/bash -x

# Dariusz Stefanski
# 22.11.2013
#
# Backups Eclipse


ECLIPSE_DIR=~/programs/eclipse4.3
timestamp=`date +"%Y.%m.%d-%H.%I"`
ZIP_NAME="eclipse-4.3-${timestamp}.zip"

if [ $# -ne 1 ]
then
  echo "Usage: $0 server"
  exit 1
fi
server=$1

cd /tmp
zip -r $ZIP_NAME $ECLIPSE_DIR
scp "$ZIP_NAME" $server:~/
