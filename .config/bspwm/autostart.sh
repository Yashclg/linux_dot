#!/bin/sh

#Killall Programs
killall -9 polybar sxhkd dunst nitrogen udiskie picom #nm-applet blueman-applet pasystray

#Polybar
exec $HOME/.config/bspwm/scripts/launchBar.sh &

#Start Hotkey Deamon
sxhkd -c $HOME/.config/bspwm/sxhkdrc &

#Compositor
picom --config $HOME/.config/bspwm/picom.conf --experimental-backends &

#Set Wallpaper
#exec $HOME/.config/bspwm/scripts/background.sh &
#nitrogen --restore
feh --bg-fill $HOME/Pictures/Backgrounds/background.jpg

#Fix Cursor
xsetroot -cursor_name left_ptr &

#Notification
dunst -config $HOME/.config/bspwm/dunstrc &

#Automounting
#udiskie &

#For Hiding Cursor while typing
xbanish &

# For System Tray
# nm-applet &
# blueman-applet &
# pasystray &
