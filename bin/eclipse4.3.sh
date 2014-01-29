#!/bin/bash

# Author: Dariusz Stefanski
# Date:   2013

#http://stackoverflow.com/questions/19452390/menus-dont-show-up-after-upgrading-to-ubuntu-13-10
export UBUNTU_MENUPROXY=0

~/programs/eclipse4.3/eclipse "$@"
