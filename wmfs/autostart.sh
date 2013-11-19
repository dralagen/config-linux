#!/bin/bash

wicd-client --tray &
start-pulseaudio-x11 &

conky -c ~/.config/wmfs/conkyrc_top | while true; read line; do wmfs -c status "default $line"; done & 
