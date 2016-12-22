#!/bin/sh

# Copies ssh public key to clipboard in Darwin.
#
# Dariusz Stefanski
# 22 Dec 2016

cat ~/.ssh/id_rsa.pub | pbcopy
