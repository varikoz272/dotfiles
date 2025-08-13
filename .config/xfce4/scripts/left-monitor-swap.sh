#!/bin/sh

DIR=$(dirname "$0")

FIRST_PROG=$(cat "$DIR/FIRST_NAME")
SECOND_PROG=$(cat "$DIR/SECOND_NAME")
TMP_FILE='/tmp/LEFT_MONITOR_SWAP'

if [ ! -f $TMP_FILE ]; then
	echo 'FIRST' > $TMP_FILE && exit 0
fi 

ABOVE_PROG=$FIRST_PROG

if [ "$(cat $TMP_FILE)" = 'SECOND' ]; then
	ABOVE_PROG=$SECOND_PROG && echo 'FIRST' > $TMP_FILE 
else
	echo 'SECOND' > $TMP_FILE
fi

wmctrl -i -r "$(wmctrl -l | grep "$ABOVE_PROG" | awk '{print $1}')" -b add,above
wmctrl -i -r "$(wmctrl -l | grep "$ABOVE_PROG" | awk '{print $1}')" -b remove,above
