#!/bin/sh

OLD_WORKSPACE_ID=$(wmctrl -d | grep -w '*' | awk '{print $1}')
WORKSPACE_ID="$1"
wmctrl -s $WORKSPACE_ID

DIR=$(dirname "$0")

FIRST_TITLE=$(cat "$DIR/FIRST_NAME")
if [ "$WORKSPACE_ID" = "0" ]; then
	wmctrl -r $FIRST_TITLE -b 'remove,maximized_horz' &&
		wmctrl -r $FIRST_TITLE -e '0,1920,0,-1,-1' &&
		wmctrl -r $FIRST_TITLE -b 'toggle,maximized_vert' &&
		wmctrl -r $FIRST_TITLE -b 'toggle,maximized_horz'
fi

if [ "$OLD_WORKSPACE_ID" = "0" ]; then
	wmctrl -r $FIRST_TITLE -b 'remove,maximized_horz' &&
		wmctrl -r $FIRST_TITLE -e '0,0,0,-1,-1' &&
		wmctrl -r $FIRST_TITLE -b 'toggle,maximized_vert' &&
		wmctrl -r $FIRST_TITLE -b 'toggle,maximized_horz'
fi

