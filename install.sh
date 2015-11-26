#!/usr/bin/env bash

# Installs dotfiles project.
#
# Dariusz Stefanski
# 28.11.2013

. bash/bash-functions.symlink

REPO_ROOT=`pwd`

callSubInstallers() {
  for d in `find . -mindepth 1 -type d `; do
    installer=$d/install.sh
    if [ -f $installer ]; then
      info "Calling $installer"
      $installer
    fi
  done
}

info "Installing dotfiles"
createBackupDir
installHomeDotfiles $REPO_ROOT
installBin $REPO_ROOT/bin my
callSubInstallers
