#!/bin/sh

# Clones all my GitHub repos to the current directory and set my priv e-mail.
#
# Dariusz Stefanski
# 6 Jul 2017

github-clone-repos.sh dst
for repo in *; do
  cd $repo
  git-email-priv.sh
  cd -
done
