#!/bin/sh

# Dariusz Stefanski
# 24.09.2014
# Downloads specific version of Gradle.
# Example usage: ./download-gradle.sh 2.1

if [ $# -ne 1 ]
then
  echo "Usage: $0 versionNr"
  exit
fi
versionNr=$1

wget https://services.gradle.org/distributions/gradle-${versionNr}-all.zip

