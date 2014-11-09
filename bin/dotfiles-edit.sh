#!/bin/bash

# Opens in editor dotfiles related projects.
#
# Dariusz Stefanski
# 10.02.2014

. ~/.bash-paths
. ~/.bash-paths-work

sublime-text $DOTFILES_PATH $DOTFILES_PRIV_PATH $DOTFILES_WORK_PATH
