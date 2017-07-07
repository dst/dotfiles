#!/bin/sh

# Installs yarn, https://yarnpkg.com
#
# Dariusz Stefanski
# 7 Jul 2017

# https://yarnpkg.com/lang/en/docs/install : If you use nvm you should exclude
# installing Node.js so that nvm’s version of Node.js is used.
brew install yarn --ignore-dependencies
