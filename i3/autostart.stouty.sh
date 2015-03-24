#!/bin/sh

numlockx on

$HOME/.screenlayout/default.sh

feh --bg-scale $HOME/.background.jpg

($HOME/.bin/qnapy.sh && clementine)&

exit 0

