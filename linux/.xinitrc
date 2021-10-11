#!/bin/bash
export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx
export XIM_PROGRAM=/usr/bin/fcitx

export XEDITOR="st -e nvim"
export BROWSER=firefox

nitrogen --restore
setxkbmap -option "terminate:ctrl_alt_bksp"

pa-applet &
nm-applet &
picom &
cbatticon -x "systemctl suspend" &
parcellite &
udiskie -t -N &
fcitx &
sxhkd &

numlockx on

xrandr --output HDMI-A-0 --off --output eDP --primary --mode 1366x768 --pos 0x0 --rotate normal --output DisplayPort-0 --off

exec dwm
