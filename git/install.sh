#!/usr/bin/env bash

# Installs git stuff.
#
# Dariusz Stefanski
# 25.11.2015

GITCONFIG="git/gitconfig.symlink"
GITCONFIG_EXAMPLE="git/gitconfig.symlink.example"

. bash/bash-functions.symlink

setupGitconfig() {
  if [ ! -f $GITCONFIG ]
  then
    echo "What is your git name?"
    read name

    echo "What is your git email?"
    read email

    cp $GITCONFIG_EXAMPLE $GITCONFIG
    sed -i "s/NAME/$name/g" $GITCONFIG
    sed -i "s/EMAIL/$email/g" $GITCONFIG

    echo ".gitconfig setup done"
  fi
}

setRebaseForDotfiles() {
  # autorebase is setup in .gitconfig, but dotfiles project was cloned before,
  # so we need to fix it manually
  git config branch.master.rebase true
}

info "Installing Git"
setupGitconfig
setRebaseForDotfiles