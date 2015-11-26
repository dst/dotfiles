#!/bin/bash

# Author: Dariusz Stefanski
# Date	: 05.09.2014
# It installs some basic programs which are useful in work

function install {
    sudo apt-get install -y $@
}

sudo apt-get update

# Adobe
install-adobeair.sh
install-adobe-reader.sh

# Automation
install ansible

# Basic stuff
install xclip meld tree gparted openssh-server tofrodos mc regexxer cloc gnome-schedule expect freemind

# Browsers
install-google-chrome.sh

# Compression
install rar

# Database
install pgadmin3 sqlite

# Editors
install zim vim kate kile

# Graphics
install gimp

# JVM
install-groovy.sh
install-oracle-jdk.sh 8
install maven

# Latex stuff
install texlive-xetex texlive-latex-extra

# Monitoring
install sysstat htop indicator-multiload iotop

# Networking
install curl nmap wireshark nicstat socat

# Package management
install rpm alien

# Other
install nautilus-dropbox
install-weather-indicator.sh

# PDF stuff
install okular xournal

# Qt
install qttools5-dev-tools

# Relax
install-spotify.py

# Security
install keepassx

# SCM
install git tig gitk gitstats gource mercurial
install-gdub.sh
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt

# Sublime Text 2
install-sublime-text2.sh

# Terminals
install terminator ledit
install-fish.sh

# Tools
# ab is in apache2-utils
install apache2-utils

# Virtualisation
install vagrant virtualbox

# Work quality
install pomodoro-indicator


echo
echo "Please remember to:"
echo "- Configure indicator-multiload"
