#!/bin/sh

xscreensaver -no-splash &

# Start dropbox
~/.dropbox-dist/dropboxd &

# Swap caplock and enable accents
setxkbmap -variant altgr-intl -option ctrl:swapcaps

exec ssh-agent -- awesome
