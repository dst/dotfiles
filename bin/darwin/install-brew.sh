#!/bin/sh

# Installs brew.
#
# Dariusz Stefanski
# 5 Jun 2017

# Check if Homebrew is installed
which -s brew
if [[ $? != 0 ]] ; then
  echo "Installing Homebrew ..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew has been already installed."
fi