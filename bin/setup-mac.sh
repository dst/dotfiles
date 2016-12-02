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

install jq ruby tree youtube-dl watch wget wireshark
installCask thunderbird
installCompletions maven-completion
installFromWeb Alfred Spectacle Xcode
