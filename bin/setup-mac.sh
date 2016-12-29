#!/bin/bash

# Author: Dariusz Stefanski
# Date	: 29.06.2016
# It installs some programs which are useful when working on Mac computer.

function install {
    brew install $@
}

function installCask {
    brew cask install $@
}

function installCompletions {
	brew tap homebrew/completions
	brew install $@
}

function installFromWeb {
	echo
	echo "------------------------------------"
	echo "Remember to:                        "
	echo " * install from web / App Store: $@ "
	echo " * xcode-select --install           "
	echo "------------------------------------"
	echo
}

# Basic
install readline

# Communication
installCask skype thunderbird

# JavaScript
install jid jq nvm
install-node.sh
install-js-packages.sh

# JVM
install-sdk.sh
sdk install groovy
sdk install java
sdk install maven
sdk install scala
install javarepl

# PaaS - Platform as a Service
install heroku

# Python
install python3

# Qt
installCask qt-creator

# Relax
installCask spotify

# Terminals
install fish

install ruby tree youtube-dl watch wget wireshark
installCask pgadmin4 libreoffice
installCompletions maven-completion
installFromWeb Alfred Spectacle Xcode
