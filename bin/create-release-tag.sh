#!/bin/bash

# It creates release tag in git
#
# Dariusz Stefanski
# spring 2013

if [ $# -ne 2 ]
then
  echo "Usage: $0 sha version"
  exit
fi

sha=$1
version=$2

activeBranch=`git rev-parse --abbrev-ref HEAD`
git checkout $sha
git tag "RELEASE_$version"
git push --tags

# Go back to the active branch
cd $CURRENT_DIR
git checkout $activeBranch

