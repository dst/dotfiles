#!/bin/bash

# Opens all dotfiles projects for editing
#
# Dariusz Stefanski
# 10.02.2014

. ~/.bash-paths
. ~/.bash-paths-priv
. ~/.bash-paths-work
. ~/.bash-paths-work-priv

sublime-text $DOTFILES_PATH $DOTFILES_PRIV_PATH $DOTFILES_WORK_PATH $DOTFILES_WORK_PRIV_PATH $DOTFILES_WORK_PRIV_TEMPLATE_PATH