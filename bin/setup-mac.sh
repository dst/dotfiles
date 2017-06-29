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

install-brew.sh

# AWS
install awscli

# Basic
install readline

# Communication
installCask skype thunderbird

# Database
install mongodb
installCask pgadmin4

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

# Languages
install python3 ruby

# Linux
installCask unetbootin

# Mobile
install android

# Music
installCask spotify

# NTFS
installCask osxfuse
install ntfs-3g

# Office
installCask libreoffice

# PaaS - Platform as a Service
install heroku

# Qt
installCask qt-creator

# Terminals
installCask iterm2
install-iterm2-utilities.sh
install fish

install tree youtube-dl watch wget wireshark
installCompletions maven-completion
installFromWeb Alfred Spectacle Xcode
