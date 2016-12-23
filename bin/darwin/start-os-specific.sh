#!/bin/bash

# Opens useful Mac programs.
#
# Dariusz Stefanski
# 23 Dec 2016

function startPrograms() {
  programs="$@"

  for program in $programs; do
    startProgram $program
  done
}

function startProgram() {
  program=$1
  open /Applications/${program}.app
}

echo "Starting Mac specific personal"

startPrograms Spotify

