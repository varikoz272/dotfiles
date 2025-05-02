#!/bin/sh

# BROWSE_WORKSPACE_ID=0
# CUR_WORKSPACE_ID=$(wmctrl -d | grep '*' | awk '{print $1}')

# wmctrl -s $BROWSE_ID
# ZEN_ID=$(wmctrl -lx | grep 'Zen Browser' | awk '{print $1}')
# PRIMARY_MONITOR=$(xrandr | grep -w connected | grep -w primary | awk '{print $1}')
# SECONDARY_MONITOR=$(xrandr | grep -w connected | grep -v primary | awk '{print $1}')

# if ["$CUR_WORKSPACE_ID" = "$BROWSE_WORKSPACE_ID"]; then
	# wmctrl -i -r "$ZEN_ID" -t $PRIMARY_MONITOR
# fi

OLD_WORKSPACE_ID=$(wmctrl -d | grep -w '*' | awk '{print $1}')
WORKSPACE_ID=$1
wmctrl -s $WORKSPACE_ID

ZEN_TITLE='Zen Browser'
if [ "$WORKSPACE_ID" = "0" ]; then
	wmctrl -r $ZEN_TITLE -b 'remove,maximized_horz' &&
		wmctrl -r $ZEN_TITLE -e '0,1920,0,-1,-1' &&
		wmctrl -r $ZEN_TITLE -b 'toggle,maximized_vert' &&
		wmctrl -r $ZEN_TITLE -b 'toggle,maximized_horz'
fi

if [ "$OLD_WORKSPACE_ID" = "0" ]; then
	wmctrl -r $ZEN_TITLE -b 'remove,maximized_horz' &&
		wmctrl -r $ZEN_TITLE -e '0,0,0,-1,-1' &&
		wmctrl -r $ZEN_TITLE -b 'toggle,maximized_vert' &&
		wmctrl -r $ZEN_TITLE -b 'toggle,maximized_horz'
fi

