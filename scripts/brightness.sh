#!/bin/bash

if [ $# -ge 1 ]; then
    if [ $1 = '+' ]; then
	op="+"
    else
	op="-"
    fi
else
    exit 0;
fi

if [ $# -eq 2 ]; then
    val=$2
else
    val=1
fi

val=$((`cat /sys/class/backlight/acpi_video0/brightness`$op$val))
max=`cat /sys/class/backlight/acpi_video0/max_brightness`

if [ $val -gt $max ]; then
    val=$max
elif [ $val -lt 0 ]; then
    val=0
fi

echo $val > /sys/class/backlight/acpi_video0/brightness
