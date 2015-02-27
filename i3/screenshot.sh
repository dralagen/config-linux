#!/bin/bash

dir="$HOME/screenshots"
filename="`date +%F_%T`.png"

mkdir -p "$dir"

case "$1" in
    window)
        import  "$dir/$filename"
        ;;
    area)
        import "$dir/$filename"
        ;;
    *)
        import -window root "$dir/$filename"
esac

exit 0

