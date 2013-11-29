#!/usr/bin/env bash

# Dariusz Stefanski
# 28.11.2013

DOTFILES_ROOT=`pwd`
GITCONFIG="git/gitconfig.symlink"
GITCONFIG_EXAMPLE="git/gitconfig.symlink.example"

setupGitconfig() {
  if [ ! -f $GITCONFIG ]
  then
    echo "What is your github name?"
    read name

    echo "What is your github email?"
    read email

    cp $GITCONFIG_EXAMPLE $GITCONFIG
    sed -i "s/NAME/$name/g" $GITCONFIG
    sed -i "s/EMAIL/$email/g" $GITCONFIG

    echo ".gitconfig setup done"
  fi
}

addLink() {
  target=$1
  name=$2
  ln -s $target $name
  echo "$name -> $target" 
}

installDotfiles() {
  mkdir backup
  for f in `find $DOTFILES_ROOT -name *.symlink`
  do
    name=`basename ${f%.*}`
    dest="$HOME/.$name"
    if [ -f $dest ]
    then
      echo "File $dest exists. Backuping..."
      mv $dest backup
    fi

    addLink $f $dest
  done
}

setupGitconfig
installDotfiles
