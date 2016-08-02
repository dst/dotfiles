#!/bin/bash

# Author: Dariusz Stefanski
# Date	: 29.06.2016
# It installs some programs which are useful when working on Mac computer.

function install {
    brew install $@
}

function installFromWeb {
	echo
	echo "----------------------------"
	echo "Remember to install from web: $@"
	echo "----------------------------"
	echo
}

install jq wget wireshark

installFromWeb Alfred Spectacle
