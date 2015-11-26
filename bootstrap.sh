#!/usr/bin/env bash

# Boostraps dotfiles project.
#
# Dariusz Stefanski
# 05.11.2014

REPO_PATH=~/myprojects/dotfiles

mkdir -p $REPO_PATH
sudo apt-get install git
git clone git@github.com:dst/dotfiles.git $REPO_PATH
cd $REPO_PATH
./install.sh
