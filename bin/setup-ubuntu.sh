#!/bin/bash

# Author: Dariusz Stefanski
# Date	: 05.09.2014
# It installs some basic programs which are useful in work

function install {
    sudo apt-get install -y $@
}

sudo apt-get update

# Basic stuff
install xclip meld tree gparted openssh-server tofrodos mc regexxer cloc nautilus-dropbox gnome-schedule expect freemind virtualbox

# Terminals
install terminator ledit
install-fish.sh

# PDF stuff
install okular xournal

# Latex stuff
install texlive-xetex texlive-latex-extra

# Compression
install rar

# Editors
install zim vim kate kile

# Graphics
install gimp

# Security
install keepassx

# Database
install pgadmin3 sqlite

# SCM stuff
install git tig gitk gitstats gource mercurial
install-gdub.sh
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt

# Monitoring
install sysstat htop indicator-multiload iotop

# Networking
install curl nmap wireshark nicstat

# Package management
install rpm alien

# Work quality
install pomodoro-indicator

# Sublime Text 2
install-sublime-text2.sh

# Browsers
install-google-chrome.sh

# Java stuff
install-oracle-jdk.sh 8
install maven

# Groovy
install-groovy.sh

# Qt
install qttools5-dev-tools

# Adobe
install-adobeair.sh
install-adobe-reader.sh

# Relax
install-spotify.py

install-weather-indicator.sh

echo
echo "Please remember to:"
echo "- Configure indicator-multiload"
