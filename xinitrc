#!/bin/sh

# Show two screens if possible
SCREEN_COUNT=$(xrandr | grep -v disconnected | grep connected | wc -l)
if [ $SCREEN_COUNT -eq 2 ]; then
    xrandr --output VGA-0 --left-of HDMI-0
fi

xscreensaver -no-splash &

# Start dropbox
~/.dropbox-dist/dropboxd &

# Swap caplock and enable accents
setxkbmap -variant altgr-intl -option ctrl:swapcaps

exec ssh-agent -- awesome
