[[ -f ~/.zshrc ]] && . ~/.zshrc

#Startx for dwm tty1
if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep bspwm || startx "$XDG_CONFIG_HOME/X11/xinitrc"
fi

