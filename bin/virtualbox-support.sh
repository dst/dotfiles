#!/bin/bash

# Author: Dariusz Stefanski
# Date	: 12.11.2014
# Prepares Ubuntu to run as guest in VirtualBox

function install {
    sudo apt-get install -y $@
}

# To better run as guest on Virtual Box
install virtualbox-guest-utils virtualbox-guest-x11 virtualbox-guest-dkms
