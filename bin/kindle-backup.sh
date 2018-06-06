#!/bin/bash

# Dariusz Stefanski
# 07.05.2012
# Backup kindle files

. ~/.bash-functions

BACKUP_DIR=~/backup/kindle_backup

mkdir -p $BACKUP_DIR
kindleDeviceDir=`findDeviceDir Kindle`

echo "Syncing Kindle ..."
time rsync -avh $kindleDeviceDir/ $BACKUP_DIR
