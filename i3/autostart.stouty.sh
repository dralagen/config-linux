#!/bin/sh

start-pulseaudio-x11

numlockx on

$HOME/.screenlayout/default.sh

feh --bg-scale $HOME/.background.jpg

($HOME/.scripts/qnapy.sh && clementine)&

exit 0

