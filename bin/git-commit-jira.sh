#!/bin/bash

# If we are on branch PROJECT-CaseNr_Description in git
# then it will create a commit with message: PROJECT-CaseNr: massage
#
# Author: Dariusz Stefanski
# Date:   20 Aug 2012

if [ $# -lt 1 ]
then
  echo "Usage: $0 message [case]"
  exit
fi

message=$1

if [ $# -eq 2 ]
then
  case=$2
else
  case=`git name-rev --name-only HEAD | cut -d"_" -f1`
fi

git commit -m "$case: $message"
