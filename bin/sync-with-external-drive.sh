#!/bin/bash

# Dariusz Stefanski
# 15.03.2012
# Syncs local disk with external drive

#EX_DRIVE_NAME="ExpansionDrive"
EX_DRIVE_NAME="SeagateBackupPlusDrive"
EXCLUDES="--exclude .cache --exclude .docker --exclude .gradle --exclude .m2 --exclude .npm --exclude .Trash"
OUT_LOG_FILE="rsync-stdout.log"
ERR_LOG_FILE="rsync-stderr.log"
RSYNC_CMD="rsync -avh --progress $EXCLUDES"

# External drive can be mounted in a diffrent directory, depending on OS:
# * Ubuntu: /media/$USER/ExpansionDrive
# * Mac: /Volumes/ExpansionDrive
#
# mount return the following output:
# /dev/disk2s1 on /Volumes/ExpansionDrive (ufsd_NTFS, local, nodev, nosuid, noowners)
function findExternalDriveDir() {
    mount | grep $EX_DRIVE_NAME | cut -d" " -f3
}

src=$HOME
dst="`findExternalDriveDir`/`hostname`"

echo "Syncing $src to $dst"

mkdir "$dst"
cd $src
# For redirecting details see:
# http://stackoverflow.com/questions/692000/how-do-i-write-stderr-to-a-file-while-using-tee-with-a-pipe
time $RSYNC_CMD "$src/" "$dst" > >(tee $OUT_LOG_FILE) 2> >(tee $ERR_LOG_FILE >&2)

echo "Syncing completed. Check $OUT_LOG_FILE and $ERR_LOG_FILE for details."
