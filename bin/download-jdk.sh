#!/bin/sh

# Dariusz Stefanski
# 24.09.2014
# Downloads specific version of JDK.
# Example usage: ./download-jdk.sh 8 5 13

if [ $# -ne 3 ]
then
  echo "Usage: $0 versionNr updateNr buildNr"
  exit
fi
versionNr=$1
updateNr=$2
buildNr=$3

header="Cookie: oraclelicense=accept-securebackup-cookie"
url=http://download.oracle.com/otn-pub/java/jdk/${versionNr}u${updateNr}-b$buildNr/jdk-${versionNr}u${updateNr}-linux-x64.tar.gz

wget --no-check-certificate --no-cookies --header "$header" $url
