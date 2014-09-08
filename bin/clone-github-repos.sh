#!/bin/sh

# Dariusz Stefanski
# 08.09.2014
# Clones all repos from github organisation

if [ $# -ne 1 ]
then
  echo "Usage: $0 organisationName"
  exit
fi
name=$1

for repo in `curl -s https://github.com/$name | grep codeRepository | cut -d'"' -f2`; do git clone git@github.com:${repo}.git; done
