#!/usr/bin/env bash

# Installs Gradle stuff.
#
# Dariusz Stefanski
# 25.11.2015


. bash/bash-functions.symlink

installGradle() {
  addLink $REPO_ROOT/gradle/gradle.properties ~/.gradle/gradle.properties
}

info "Installing Gradle"
installGradle
