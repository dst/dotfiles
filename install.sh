#!/usr/bin/env bash

# Dariusz Stefanski
# 28.11.2013

. bash/bash-functions.symlink

REPO_ROOT=`pwd`
GITCONFIG="git/gitconfig.symlink"
GITCONFIG_EXAMPLE="git/gitconfig.symlink.example"


setupGitconfig() {
  if [ ! -f $GITCONFIG ]
  then
    echo "What is your github name?"
    read name

    echo "What is your github email?"
    read email

    cp $GITCONFIG_EXAMPLE $GITCONFIG
    sed -i "s/NAME/$name/g" $GITCONFIG
    sed -i "s/EMAIL/$email/g" $GITCONFIG

    echo ".gitconfig setup done"
  fi
}


createBackupDir
setupGitconfig
installHomeDotfiles $REPO_ROOT
installBin $REPO_ROOT/bin
