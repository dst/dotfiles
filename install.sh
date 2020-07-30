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

createDirectories() {
	mkdir ~/myprojects
	mkdir ~/programs
}

cloneMyGitHubRepos() {
  cd ~/myprojects
  # Reload Bash profile first to have access to bin scipts.
  . ~/.bashrc
  github-clone-my-repos.sh
}

info "Installing dotfiles"
createBackupDir
installBin $REPO_ROOT/bin my
installHomeDotfiles $REPO_ROOT
callSubInstallers
createDirectories
cloneMyGitHubRepos
