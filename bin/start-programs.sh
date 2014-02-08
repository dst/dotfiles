#!/bin/bash

# Opens usefull programs
# Dariusz Stefanski

. ~/.bash-functions

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

#addFile some_path/przydatne.txt
openFiles

# my applications:
startPrograms birthday promo-finder

pullGitRepo ~/myprojects/dotfiles
pullGitRepo ~/myprojects/config-private

# work
start-work.sh
