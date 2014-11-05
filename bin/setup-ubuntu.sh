#!/bin/bash

# Author: Dariusz Stefanski
# Date	: 05.09.2014
# It installs some basic programs which are useful in work

function install {
	sudo apt-get install -y $@
}

sudo apt-get update

# Basic stuff
install xclip curl meld tree gparted openssh-server tofrodos mc pgadmin3 regexxer cloc

# Terminal
install terminator fish

# PDF stuff
install okular xournal

# Editors
install zim vim kate kile

# Security
install keepassx

# SCM stuff
install git gitk gitstats gource mercurial

# Monitoring
install sysstat htop indicator-multiload

# Package management
install rpm alien

# To better run as guest on Virtual Box
install virtualbox-guest-utils virtualbox-guest-x11 virtualbox-guest-dkms

# Java stuff
install-oracle-jdk.sh 8
install maven

# Groovy
install-groovy.sh

echo
echo "Please remember to:"
echo "- Configure indicator-multiload"
