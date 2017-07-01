#!/usr/bin/env bash

# Installs ssh stuff.
#
# Dariusz Stefanski
# 1 Jul 2017

# Reload Bash profile first to have access to bin scipts.
. ~/.bashrc
if [ ! -f ~/.ssh/id_rsa ]; then
  echo "Generating strong ssh keys..."
  echo "What is your email address which should be used to identify your ssh keys?"
  read email
  sshkey-generate.sh $email
fi
