#!/bin/bash
export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx
export XIM_PROGRAM=/usr/bin/fcitx

export XEDITOR=st -e nvim
export BROWSER=firefox

nitrogen --restore
numlockx on
setxkbmap -option "terminate:ctrl_alt_bksp"

pa-applet &
nm-applet &
picom &
xfce4-power-manager &
parcellite &
udiskie -t -N &
blueman-applet &
fcitx &
sxhkd &

exec dwm
