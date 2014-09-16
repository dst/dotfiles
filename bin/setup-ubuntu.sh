#!/bin/bash

# Author: Dariusz Stefanski
# Date	: 05.09.2014
# It installs some basic programs which are useful in work

function install {
	sudo apt-get install -y $@
}

sudo apt-get update

# Basic stuff
install xclip git curl zim terminator gitk meld tree gparted openssh-server tofrodos indicator-multiload mc fish pgadmin3 systat

# Editors
install vim kate kile

# Java 8
install-oracle-jdk.sh 8

# Groovy
install-groovy.sh

# To better run as guest on Virtual Box
sudo apt-get install virtualbox-guest-utils virtualbox-guest-x11 virtualbox-guest-dkms
