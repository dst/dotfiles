#!/bin/sh

# Dariusz Stefanski
# 03.09.2014
# Copies ssh public key to clipboard

xclip -sel clip < ~/.ssh/id_rsa.pub
