#!/bin/bash

# Dariusz Stefanski
# 22.02.2014
# Backup ZTE files


BACKUP_DIR=~/backup/zte-backup/

echo "Syncing ZTE"
mkdir -p $BACKUP_DIR
time rsync -avh /media/$USER/2E24-0FE4 $BACKUP_DIR
time rsync -avh /media/$USER/9016-4EF8 $BACKUP_DIR
