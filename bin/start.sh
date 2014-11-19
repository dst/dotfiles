#!/bin/bash

# Opens usefull programs
# Dariusz Stefanski

. ~/.bash-functions
. ~/.bash-paths
. ~/.bash-paths-priv

index=0
function addFile {
    file=$1
    files[$index]=$1
    index=`expr $index + 1`
}

function openFiles {
    if [ ${#files[@]} -gt 0 ]
    then
        # There are some files to open
        startProgram kate ${files[@]}
    fi
}

pullGitRepo $DOTFILES_PATH
pullGitRepo $DOTFILES_PRIV_PATH
pullGitRepo $IT_ZIM_NOTES

startPrograms thunderbird skype pidgin firefox google-chrome liferea
startProgram zim $IT_ZIM_NOTES

#addFile some_path/przydatne.txt
openFiles

# my applications:
startPrograms birthday promo-finder

startProgram keepassx $KEEPASSX_DB_PATH
