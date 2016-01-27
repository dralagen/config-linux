#!/bin/sh

wicd-client --tray 1>&2 2> /dev/null &

start-pulseaudio-x11

feh --bg-center $HOME/.background.png

# pcmanfm --no-desktop -d &

sudo gopenvpn &

/home/dralagen/.i3/notifyBattery.sh &
~/.scripts/lightsOn.sh &

exit 0

