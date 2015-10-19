#!/bin/sh

start-pulseaudio-x11

numlockx on

$HOME/.bin/screenlayout_default.sh

feh --bg-scale $HOME/.background.jpg

($HOME/.bin/qnapy.sh && clementine)&

chromium &
thunderbird &

exit 0

