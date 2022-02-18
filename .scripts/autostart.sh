pgrep -x sxhkd > /dev/null || sxhkd & 
picom --experimental-backends &
feh --recursive --randomize --bg-fill /home/sdk/Pictures/wallpapers &
dunst &
xsetroot -cursor_name left_ptr &
#nm-applet &
#pavucontrol &
