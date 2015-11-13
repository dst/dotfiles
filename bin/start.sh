#!/bin/bash

# Opens usefull programs
# Dariusz Stefanski

. ~/.bash-functions
. ~/.bash-paths
. ~/.bash-paths-priv

echo "Starting personal"

pullGitRepo $DOTFILES_PATH
pullGitRepo $DOTFILES_PRIV_PATH
pullGitRepo $IT_ZIM_NOTES

startPrograms thunderbird skype pidgin firefox google-chrome spotify liferea
startProgram zim $IT_ZIM_NOTES
startProgram keepassx $KEEPASSX_DB_PATH

# my applications:
startPrograms dontforget promo-finder
