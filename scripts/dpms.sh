#!/bin/bash

case "$1" in
    off)
        xset -dpms
        xset s off
        ;;
    now)
        xset dpms force off
        ;;
    *)
        xset +dpms
        xset s on
        ;;
esac

exit 0;

