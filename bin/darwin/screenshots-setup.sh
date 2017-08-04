#!/bin/sh

# Changes the default location of screen shots from ~/Desktop.
#
# Dariusz Stefanski
# 22 Dec 2016

SCREEN_SHOTS_DIR="~/ScreenShots"

echo "Settings the screen shots location to $SCREEN_SHOTS_DIR"
mkdir $SCREEN_SHOTS_DIR
defaults write com.apple.screencapture location $SCREEN_SHOTS_DIR
