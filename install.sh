#!/usr/bin/env bash

# Dariusz Stefanski
# 28.11.2013

REPO_ROOT=`pwd`
GITCONFIG="git/gitconfig.symlink"
GITCONFIG_EXAMPLE="git/gitconfig.symlink.example"

createBackupDir() {
  backupDir=`pwd`/backup
  mkdir $backupDir
  echo "Created backup dir in: $backupDir"
}

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

  if [ -f $name ]
    then
      echo "File $name exists. Backuping..."
      mv $name $backupDir
    fi

  ln -s $target $name
  echo "$name -> $target"
}

installDotfiles() {
  for f in `find $REPO_ROOT -name *.symlink`
  do
    name=`basename ${f%.*}`
    dest="$HOME/.$name"
    addLink $f $dest
  done
}

createBackupDir
setupGitconfig
installDotfiles
