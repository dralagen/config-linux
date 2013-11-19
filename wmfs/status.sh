#!/bin/sh
#WMFS status.sh example file
TIMING=1
statustext()
{
     wmfs -c status "default `date "+%A %d %B %H:%M"`"
}
while true;
do
	statustext
	sleep $TIMING
done
