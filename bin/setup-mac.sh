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
install bash-completion coreutils fdupes readline rename tree watch

# Communication
installCask skype slack thunderbird

# Database
install libpq # psql, pg_dump and other client utilities without installing Postgres
install mongodb
installCask pgadmin4 db-browser-for-sqlite

# Editor/IDE
installCask sublime-text
installCask jetbrains-toolbox # Used to install Intellij and manage its versions.
install-zim.sh

# Graphics
install imagemagick
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
sdk install kotlin
sdk install maven
sdk install sbt
sdk install scala
sdk install springboot
install javarepl maven-completion mvnvm
installCask visualvm

# Kotlin
install shyiko/ktlint/ktlint

# Languages
install python3

# Latex
installCask mactex

# Linux
installCask unetbootin

# Mac
screenshots-setup.sh
installCask coconutbattery

# Mobile
install android

# Music
installCask spotify

# Network
install httpie wget wireshark
installCask insomnia postman

# NTFS
installCask osxfuse
install ntfs-3g

# Office
installCask libreoffice

# PaaS - Platform as a Service
install heroku

# Productivity
installCask alfred magicprefs shiftit spectacle

# Qt
installCask qt-creator

# SCM (Git, etc.)
brew install bash-git-prompt git git-gui

# Security
install gpg
installCask keepassx

# Storage
installCask dropbox

# Terminals
install mc
installCask iterm2
install-iterm2-utilities.sh
install fish

# Text
install cloc

# Video
install youtube-dl
installCask vlc

# Virualization
# If there is a problem with virtualbox installation:
# https://apple.stackexchange.com/questions/372492/virtualbox-installation-failed-on-macos-catalina
# System Preferences > Security & Privacy -> General
# The approval UI is only present in the Security & Privacy preferences pane for 30 minutes after the alert.
installCask virtualbox
install docker docker-machine docker-compose
installCask docker docker-toolbox # Depends on virtualbox


installFromWeb Xcode Monosnap
echo "Run Docker app and accept privileged access"
