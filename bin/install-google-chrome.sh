#!/bin/sh

# Dariusz Stefanski
# 19.11.2014
# Installs Google Chrome browser

pushd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
popd
