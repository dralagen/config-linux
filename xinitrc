#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi


exec /usr/bin/urxvtd &

#exec cinnamon-session

cat $HOME/.i3/config.base \
    $HOME/.i3/config.$HOSTNAME > $HOME/.i3/config
exec i3

