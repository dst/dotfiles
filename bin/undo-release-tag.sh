#!/bin/bash

# Undo release tag in git.
#
# Dariusz Stefanski
# 08.11.2013


if [ $# -ne 1 ]
then
  echo "Usage: $0 version"
  exit
fi
ver=$1

git push origin :RELEASE_$ver
git fetch --prune --tags
