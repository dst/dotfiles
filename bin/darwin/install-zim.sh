#!/bin/bash

# Installs Zim (a destop Wiki), http://zim-wiki.org
#
# Dariusz Stefanski
# 6 Jul 2017

cd ~/programs
git clone git@github.com:jaap-karssenberg/zim-desktop-wiki.git
cd zim-desktop-wiki
# Checkout the latest tag
git checkout `git describe --abbrev=0 --tags --match "[0-9]*" origin`
# Install dependendencies, http://zim-wiki.org/install.html
brew install gtk-mac-integration
pip install pyxdg
