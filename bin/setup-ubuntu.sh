#!/bin/bash

# Author: Dariusz Stefanski
# Date	: 05.09.2014
# It installs some basic programs which are useful in work

function install {
	sudo apt-get install -y $@
}

sudo apt-get update

# Basic stuff
install xclip curl terminator gitk meld tree gparted openssh-server tofrodos indicator-multiload mc fish pgadmin3 regexxer cloc

# PDF stuff
install okular xournal

# Editors
install zim vim kate kile

# SCM stuff
install git gitstats gource mercurial

# Monitoring
install systat htop

# Package management
install rpm alien

# To better run as guest on Virtual Box
install virtualbox-guest-utils virtualbox-guest-x11 virtualbox-guest-dkms

# Java stuff
install-oracle-jdk.sh 8
install maven

# Groovy
install-groovy.sh
