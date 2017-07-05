#!/bin/sh

# Dariusz Stefanski
# 08.09.2014
# Clones all repos for the given GitHub name (user or organisation)

if [ $# -ne 1 ]
then
  echo "Usage: $0 name"
  exit
fi
name=$1

curl "https://api.github.com/users/$name/repos?per_page=100" |
  grep -e 'git_url*' |
  cut -d \" -f 4 |
  xargs -L1 git clone
