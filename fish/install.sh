#!/usr/bin/env bash

# Installs Fish stuff.
#
# Dariusz Stefanski
# 25.11.2015


. bash/bash-functions.symlink

REPO_ROOT=`pwd`

installFish() {
  addLink $REPO_ROOT/fish ~/.config/fish
}

info "Installing Fish"
installFish
