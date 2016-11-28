# Tests for Thunderbird specific functions.
#
# Dariusz Stefanski
# 28 Nov 2016

. ../bash-thunderbird-functions.symlink

if [[ "$PREFS_FILE" != *default/prefs.js ]]; then
    echo "Prefs file is invalid: $PREFS_FILE"
fi

path=`getPathForEmail d.a.stefanski`
if [[ "$path" != *default/ImapMail/imap.gmail.com ]]; then
    echo "Email path is invalid: $path"
fi
