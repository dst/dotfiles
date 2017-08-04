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

# Bash / command line
install bash-completion coreutils readline tree watch wget

# Communication
installCask skype thunderbird

# Database
install mongodb
installCask pgadmin4

# Editor/IDE
installCask intellij-idea sublime-text
install-zim.sh

# Graphics
installCask gimp

# JavaScript
install jid jq
install-nvm.sh
install-node.sh
install-npm-packages.sh
install-yarn.sh

# JVM
install-sdk.sh
. ~/.sdkman/bin/sdkman-init.sh
sdk install groovy
sdk install java
sdk install maven
sdk install scala
install javarepl maven-completion

# Languages
install python3 ruby

# Linux
installCask unetbootin

# Mac
screenshots-setup.sh

# Mobile
install android

# Music
installCask spotify

# Network
install wireshark

# NTFS
installCask osxfuse
install ntfs-3g

# Office
installCask libreoffice

# PaaS - Platform as a Service
install heroku

# Productivity
installCask alfred spectacle

# Qt
installCask qt-creator

# Security
installCask keepassx

# Storage
installCask dropbox

# Terminals
installCask iterm2
install-iterm2-utilities.sh
install fish

# Video
install youtube-dl
installCask vlc

# Virualization
installCask virtualbox
install docker docker-machine docker-compose

installFromWeb Xcode
