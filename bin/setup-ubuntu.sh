#!/bin/bash

# Author: Dariusz Stefanski
# Date	: 05.09.2014
# It installs some basic programs which are useful in work

sudo apt-get update

# Basic stuff
sudo apt-get install -y vim xclip git curl zim terminator gitk meld tree gparted openssh-server tofrodos indicator-multiload mc fish

# Java 8
install-oracle-jdk.sh 8

# Groovy
install-groovy.sh

# To better run as guest on Virtual Box
sudo apt-get install virtualbox-guest-utils virtualbox-guest-x11 virtualbox-guest-dkms
