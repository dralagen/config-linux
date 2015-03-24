#!/bin/bash

case "$1" in
    off)
        xset -dpms
        xset s off
        xautolock -disable | true
        ;;
    now)
        xset dpms force off
        xautolock -enable | true
        ;;
    *)
        xset +dpms
        xset s on
        xautolock -enable | true
        ;;
esac

exit 0;

