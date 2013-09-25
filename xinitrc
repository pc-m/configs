#!/bin/sh

# Show two screens if possible
SCREEN_COUNT=$(xrandr | grep -v disconnected | grep connected | wc -l)
if [ $SCREEN_COUNT -eq 2 ]; then
    xrandr --output DVI-0 --right-of HDMI-0
fi

# Swap caplock and enable accents
setxkbmap -variant altgr-intl #-option ctrl:swapcaps

pidgin &
~/.dropbox-dist/dropboxd &
hamster-time-tracker &

exec ssh-agent -- awesome
