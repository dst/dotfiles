#!/bin/bash

# Opens usefull programs
# Dariusz Stefanski

index=0
function addFile {
  file=$1
  files[$index]=$1
  index=`expr $index + 1` 
}

function openFiles {
  kate ${files[@]} &
}

thunderbird &
skype &
empathy &
firefox &
liferea &
zim &
terminator &

#addFile some_path/przydatne.txt
openFiles

# my applications:
birthday &
promo-finder &

# work
start-work.sh
