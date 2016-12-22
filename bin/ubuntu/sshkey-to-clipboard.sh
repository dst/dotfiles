#!/bin/sh

# Copies ssh public key to clipboard in Ubuntu.
#
# Dariusz Stefanski
# 3 Sep 2014

xclip -sel clip < ~/.ssh/id_rsa.pub
