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

git tag "RELEASE_$version" $sha
git push --tags
