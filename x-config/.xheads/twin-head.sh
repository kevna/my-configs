#!/bin/sh

LEFT="VGA-0"
RIGHT="DVI-0"

xrandr --output $LEFT --auto
xrandr --output $RIGHT --mode 1280x800 --right-of $LEFT

