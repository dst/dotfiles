#!/bin/bash

# Dariusz Stefanski
# 15.03.2012
# Syncs local disk with external drive

. ~/.bash-functions

#EX_DRIVE_NAME="ExpansionDrive"
EX_DRIVE_NAME="SeagateBackupPlusDrive"
# Inspiration for Mac exlusions: /System/Library/CoreServices/backupd.bundle/Contents/Resources/StdExclusions.plist
EXCLUDES="--exclude /.cache --exclude /.docker --exclude /.gradle --exclude /.ivy2 --exclude /.m2 --exclude /.npm --exclude /.nvm --exclude /.sbt --exclude /.Trash --exclude /Library/Caches --exclude /Library/Logs --exclude node_modules/"
OUT_LOG_FILE="rsync-stdout.log"
ERR_LOG_FILE="rsync-stderr.log"
RSYNC_CMD="rsync -avh --progress $EXCLUDES"

src=$HOME
dst="`findDeviceDir $EX_DRIVE_NAME`/`hostname`"

echo "Syncing $src to $dst"

mkdir "$dst"
cd $src
# For redirecting details see:
# http://stackoverflow.com/questions/692000/how-do-i-write-stderr-to-a-file-while-using-tee-with-a-pipe
time $RSYNC_CMD "$src/" "$dst" > >(tee $OUT_LOG_FILE) 2> >(tee $ERR_LOG_FILE >&2)

echo "Syncing completed. Check $OUT_LOG_FILE and $ERR_LOG_FILE for details."
