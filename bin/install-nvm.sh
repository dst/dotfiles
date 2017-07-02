#!/bin/bash

# Installs nvm, Node Version Manager, https://github.com/creationix/nvm
#
# Dariusz Stefanski
# 14 Dec 2016

export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/creationix/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  # Get latest tag
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
) && . "$NVM_DIR/nvm.sh"
