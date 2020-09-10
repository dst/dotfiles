#!/bin/sh

# Changes the default location of screenshots from ~/Desktop.
#
# Dariusz Stefanski
# 22 Dec 2016

SCREENSHOTS_DIR=~/Screenshots

echo "Settings the screen shots location to $SCREENSHOTS_DIR"
mkdir $SCREENSHOTS_DIR
defaults write com.apple.screencapture location $SCREENSHOTS_DIR
