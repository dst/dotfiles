#!/usr/bin/env bash

# Bootsraps dotfiles project.
#
# Dariusz Stefanski
# 05.11.2014

REPO_PATH=~/myprojects/dotfiles

mkdir -p $REPO_PATH
git clone git@github.com:dst/dotfiles.git $REPO_PATH
cd $REPO_PATH
./install.sh
