#!/bin/sh

source ~/.xheads/twin-heads.sh &
#load custom key configuration
#setxkbmap -layout "gb"
xmodmap ~/.Xmodmap &
#call .xprofile (starts assorted daemons)
source ~/.xprofile &
#load .Xresources
xrdb ~/.Xresources &
#start openbox
exec openbox-session

