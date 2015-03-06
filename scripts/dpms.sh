#!/bin/bash

case "$1" in
    off)
        xset -dpms
        xset s off
        xautolock -disable 2 > /dev/null
        ;;
    now)
        xset dpms force off
        xautolock -enable 2 > /dev/null
        ;;
    *)
        xset +dpms
        xset s on
        xautolock -enable 2 > /dev/null
        ;;
esac

exit 0;

