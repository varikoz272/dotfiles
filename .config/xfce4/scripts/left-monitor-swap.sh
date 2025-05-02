#!/bin/sh

FIRST_PROG='Zen Browser'
SECOND_PROG='Discord'
TMP_FILE='/tmp/LEFT_MONITOR_SWAP'

if [ ! -f $TMP_FILE ]; then
	echo 'Z' > $TMP_FILE && exit 0
fi 

ABOVE_PROG=$FIRST_PROG

if [ "$(cat $TMP_FILE)" = "D" ]; then
	ABOVE_PROG=$SECOND_PROG && echo 'Z' > $TMP_FILE 
else
	echo 'D' > $TMP_FILE
fi

echo $ABOVE_PROG

wmctrl -i -r "$(wmctrl -l | grep "$ABOVE_PROG" | awk '{print $1}')" -b add,above
wmctrl -i -r "$(wmctrl -l | grep "$ABOVE_PROG" | awk '{print $1}')" -b remove,above
