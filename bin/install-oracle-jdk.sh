#!/bin/sh

# Dariusz Stefanski
# 03.09.2014
# Installs Oracle JDK in given version

if [ $# -ne 1 ]
then
  echo "Usage: $0 version(one of 6, 7, 8)"
  exit
fi
version=$1

sudo apt-get update
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java${version}-installer
