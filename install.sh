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

if isMac; then
  installBin $REPO_ROOT/bin/darwin my/darwin
else
  installBin $REPO_ROOT/bin/ubuntu my/ubuntu
fi

# Reload Bash profile first to have access to bin scipts.
. ~/.bashrc
if [ ! -f ~/.ssh/id_rsa ]; then
  echo "Generating strong ssh keys..."
  echo "What is your email address which should be used to identify your ssh keys?"
  read email
  sshkey-generate.sh $email
fi
