#!/bin/bash

# Dariusz Stefanski
# 21.11.2013
#
# Backups Thunderbird message filters to the specified server and directory.
# localhost can be used as server to backup locally.


FILTER_FILE="msgFilterRules.dat"
# *default - profile directory, it can be also read from ~/.thunderbird profiles.ini file
PROFILE_DIR=~/.thunderbird/*default
PREFS_FILE="$PROFILE_DIR/prefs.js"
IMAP_DIR="$PROFILE_DIR/ImapMail"


function getEmailForPath {
	path=$1

	# In PREFS_FILE we have inter alia something like:
	# user_pref("mail.server.serverN.directory", "path");
	# user_pref("mail.server.serverN.name", "example@example.com");

	# Create something like user_pref("mail.server.serverN.name
	serverNameLinePrefix=`grep $path $PREFS_FILE | cut -d, -f1 | sed "s/directory/name/"`

	# Extract email address:
	email=`grep $serverNameLinePrefix $PREFS_FILE | sed -n 's/.*"\(.*@.*\)".*/\1/p'`

	echo $email
}

if [ $# -ne 2 ]
then
  echo "Usage: $0 server destDir"
  exit 1
fi
server=$1
destDir=$2

cd $IMAP_DIR
for dir in `ls | grep -v msf`
do
	path="`pwd`/$dir"
	email=`getEmailForPath $path`
	src="$dir/$FILTER_FILE"
	dst="$destDir/${email}_$FILTER_FILE"

	echo "Coping $email filters"
	scp $src $server:$dst
done
