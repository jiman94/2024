#!/bin/bash

CALLS=`/usr/bin/fs_cli -x "show calls count" | grep total | awk {'print $1'}`
CHANNELS=`/usr/bin/fs_cli -x "show channels count" | grep total | awk {'print $1'}`
CALLSPERSEC=`/usr/bin/fs_cli -x "show status" | grep "session(s) per Sec" | awk {'print $1'}`

echo "Calls: $CALLS"
echo "Channels: $CHANNELS"
echo "Calls per Sec: $CALLSPERSEC"
