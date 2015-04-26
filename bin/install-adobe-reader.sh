#!/bin/sh

# Dariusz Stefanski
# 23.04.2014
# Installs Adobe Reader

REPO="deb http://archive.canonical.com/ precise partner"

sudo add-apt-repository $REPO
sudo apt-get update
sudo apt-get install acroread
sudo add-apt-repository -r $REPO
sudo apt-get update
