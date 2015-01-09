#!/bin/bash

# Dariusz Stefanski
# 07.05.2012
# Backup kindle files

BACKUP_DIR=~/backup/kindle_backup

echo "Syncing Kindle"
mkdir -p $BACKUP_DIR
time rsync -avh /media/$USER/Kindle/ $BACKUP_DIR
