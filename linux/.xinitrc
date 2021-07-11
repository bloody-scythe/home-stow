#!/bin/bash
# export GTK_IM_MODULE=fcitx
# export XMODIFIERS=@im=fcitx
# export QT_IM_MODULE=fcitx
# export XIM_PROGRAM=/usr/bin/fcitx

export EDITOR=nvim
export XEDITOR=st -e nvim
export BROWSER=firefox

nitrogen --restore
numlockx on
setxkbmap -option "terminate:ctrl_alt_bksp"

pa-applet &
nm-applet &
picom &
xfce4-power-manager &
xfce4-clipman &
udiskie -t -N &
blueman-applet &
fcitx &
sxhkd &

if [ -d ~/.config/autostart ] ; then
 for f in ~/.config/autostart/* ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec dwm
