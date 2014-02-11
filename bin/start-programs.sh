#!/bin/bash

# Opens usefull programs
# Dariusz Stefanski

. ~/.bash-functions
. ~/.bash-paths

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

echo "Starting programs"

startPrograms thunderbird skype empathy firefox liferea zim
startProgram zim $IT_ZIM_NOTES

#addFile some_path/przydatne.txt
openFiles

# my applications:
startPrograms birthday promo-finder

pullGitRepo $DOTFILES_PATH
pullGitRepo $DOTFILES_PRIV_PATH

# work
start-work.sh
