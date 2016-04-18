#!/bin/bash

# Dariusz Stefanski
# 15.03.2012
# Syncs local disk with external drive

EX_DRIVE="/media/$USER/ExpansionDrive"
EXCLUDE=".cache .m2"
OUT_LOG_FILE="rsync-stdout.log"
ERR_LOG_FILE="rsync-stderr.log"
RSYNC_CMD="rsync -avh --progress --exclude=$EXCLUDE"

src=$HOME
dst="$EX_DRIVE/`hostname`"

echo "Syncing $src to $dst"

mkdir "$dst"
# For redirecting details see:
# http://stackoverflow.com/questions/692000/how-do-i-write-stderr-to-a-file-while-using-tee-with-a-pipe
time $RSYNC_CMD "$src/" "$dst" > >(tee $OUT_LOG_FILE) 2> >(tee $ERR_LOG_FILE >&2)

echo "Syncing completed. Check $OUT_LOG_FILE and $ERR_LOG_FILE for details."
