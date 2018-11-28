#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
done
unset f

xrdb -merge ~/.Xresources

xrandr --dpi 96 &

exec i3 

#exec i3 -V >> ~/i3log-$(date +'%F-%k-%M-%S') 2>&1

