#!/bin/bash

# It extracts an JIRA issue number from a branch name
# and creates a commit with a message: "issueNumber: message"
#
# Examples of branch names:
# * ABC-123-cool-feature
# * ABC-123_cool-feature
# * issue/ABC-123-cool-feature
#
# Author: Dariusz Stefanski
# Date:   20 Aug 2012

if [ $# -lt 1 ]
then
  echo "Usage: $0 message [issueNumber]"
  exit
fi

message=$1

if [ $# -eq 2 ]
then
  issueNumber=$2
else
  branch=`git rev-parse --abbrev-ref HEAD`
  if [[ $branch =~ ([a-zA-Z]+-[0-9]+) ]]
  then
    issueNumber=${BASH_REMATCH[1]}
  fi
fi

git commit -m "$issueNumber: $message"
