#!/bin/bash

# It adds gradle wrapper to project and sets a specified version
#
# Author: Dariusz Stefanski
# Date:   20 Feb 2016

if [ $# -lt 1 ]
then
  echo "Usage: $0 gradleVersion"
  exit
fi
gradleVersion=$1

gradle wrapper --gradle-version $gradleVersion

