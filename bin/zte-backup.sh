#!/bin/bash

# Dariusz Stefanski
# 22.02.2014
# Backup ZTE files

echo "Syncing ZTE"
time rsync -avh /media/$USER/2E24-0FE4/ ~/backup/zte-backup
