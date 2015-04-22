#!/bin/sh

# Dariusz Stefanski
# 22.04.2014
# Installs Adobe AIR

cd /tmp
wget http://airdownload.adobe.com/air/lin/download/latest/AdobeAIRInstaller.bin
chmod u+x ./AdobeAIRInstaller.bin
sudo LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu ./AdobeAIRInstaller.bin
