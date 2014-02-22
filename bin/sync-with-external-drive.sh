#!/bin/bash

# Dariusz Stefanski
# 15.03.2012
# Syncs local disk with external drive

EX_DRIVE="/media/$USER/Expansion Drive"
EXCLUDE=".cache"
LOG_FILE="rsync.log"
# Use --dry-run if needed
RSYNC_CMD="rsync -avh --exclude=$EXCLUDE --log-file=$LOG_FILE"

src=$HOME
dst="$EX_DRIVE/`hostname`"

echo "Syncing $src to $dst"

time $RSYNC_CMD "$src/" "$dst"

echo "Syncing completed. Check $LOG_FILE for details."
