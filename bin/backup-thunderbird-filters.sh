#!/bin/bash

# Dariusz Stefanski
# 21.11.2013
#
# Backups Thunderbird message filters to the specified server and directory.
# localhost can be used as server to backup locally.

. ~/.bash-thunderbird-functions

if [ $# -ne 2 ]
then
	echo "Usage: $0 server destDir"
	exit 1
fi
server=$1
destDir=$2

if [[ "$destDir" != /* ]]; then
	# Relative path
	destDir=`pwd`/$destDir
fi

info "Destination directory is $destDir"

cd $IMAP_DIR
for dir in `ls | grep -v msf`
do
	path="`pwd`/$dir"
	email=`getEmailForImapPath $path`
	src="$dir/$FILTER_FILE"
	dst="$destDir/${email}_$FILTER_FILE"

	info "Coping $email filters"
	scp $src $server:$dst
done
