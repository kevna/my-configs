#!/bin/sh

LEFT="VGA-0"
RIGHT="DVI-0"

xrandr --output $LEFT --auto
xrandr --output $RIGHT --off

