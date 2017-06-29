#!/usr/bin/env bash

# Bootsraps dotfiles project.
#
# Dariusz Stefanski
# 05.11.2014

REPO_PATH=~/myprojects/dotfiles

mkdir -p $REPO_PATH

# Use only temporary https protocol, because we haven't created ssh keys yet.
git clone https://github.com/dst/dotfiles.git $REPO_PATH
cd $REPO_PATH
# Set ssh protocol now, we will generate ssh keys and add them to GitHub later.
git remote set-url origin git@github.com:dst/dotfiles.git
./install.sh
