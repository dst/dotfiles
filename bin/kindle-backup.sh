#!/bin/bash

# Dariusz Stefanski
# 07.05.2012
# Backup kindle files

echo "Syncing Kindle"
time rsync -avh /media/$USER/Kindle/ ~/backup/kindle_backup
