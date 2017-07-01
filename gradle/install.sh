#!/usr/bin/env bash

# Installs Gradle stuff.
#
# Dariusz Stefanski
# 25.11.2015


. bash/bash-functions.symlink

REPO_ROOT=`pwd`

installGradle() {
  mkdir ~/.gradle
  addLink $REPO_ROOT/gradle/gradle.properties ~/.gradle/gradle.properties
}

info "Installing Gradle"
installGradle
