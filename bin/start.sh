#!/bin/bash

# Opens useful programs
# Dariusz Stefanski

. ~/.bash-functions
. ~/.bash-paths
. ~/.bash-paths-priv

echo "Starting personal"

# Checks if something (Java, Groovy, etc.) can be upgrated.
sdk outdated

pullGitRepo $DOTFILES_PATH
pullGitRepo $DOTFILES_PRIV_PATH
pullGitRepo $IT_ZIM_NOTES

startPrograms thunderbird skype pidgin firefox google-chrome liferea
startProgram zim $IT_ZIM_NOTES
startProgram keepassx $KEEPASSX_DB_PATH

# my applications:
startPrograms dontforget promo-finder

start-os-specific.sh
