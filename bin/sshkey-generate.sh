#!/bin/sh

# Generates strong ssh keys.
#
# Dariusz Stefanski
# 29 June 2017

if [ $# -ne 1 ]
then
  echo "Usage: $0 email"
  exit
fi
email=$1

if [ -f ~/.ssh/id_rsa ]; then
	echo "You have already ssh keys. I will not override them. Exiting..."
	exit
fi

ssh-keygen -t rsa -b 4096 -C $email
