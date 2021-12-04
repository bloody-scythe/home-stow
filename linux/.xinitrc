#!/bin/bash

export GTK_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx
export XIM_PROGRAM=/usr/bin/fcitx

export BROWSER=firefox

otd & #tablet driver
sxhkd -m -1 & #keybindings
nitrogen --restore #load wallpaper

numlockx on
setxkbmap br nodeadkeys
setxkbmap -option "terminate:ctrl_alt_bksp"

exec=${exec:-dwm}
case $exec in
dwm)
	dwm_bar &
	picom -b
	pa-applet &
	nm-applet &
	cbatticon -x "systemctl suspend" &
	parcellite &
	udiskie -t -f "${TERMINAL:-st} -e vifm" &
	fcitx -d
	exec dwm
	;;

openbox)
	bmpanel2 --theme=transpy &
	picom -b
	pa-applet &
	nm-applet &
	cbatticon -x "systemctl suspend" &
	parcellite &
	udiskie -t -f "${TERMINAL:-st} -e vifm" &
	fcitx -d
	exec openbox
	;;

qtile)
	picom -b
	pa-applet &
	nm-applet &
	cbatticon -x "systemctl suspend" &
	parcellite &
	udiskie -t -f "${TERMINAL:-st} -e vifm" &
	fcitx -d
	exec qtile start
	;;

clean|clear)
	exec dwm
	;;
*)
	exec $exec
	;;
esac
