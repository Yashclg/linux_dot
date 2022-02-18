#Setting defaults
export TERM="xterm-256color"
export EDITOR="nvim"
export SUDO_EDITOR="nvim"
export READER="zathura"
export TERMINAL="alacritty"
export BROWSER="google-chrome-stable"
export VIDEO="mpv"
export IMAGE="feh"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export MANPAGER="nvim +Man!"

#Setting Custom Paths
PATH="$PATH:/$HOME/.local/bin/"
PATH="$PATH:/$HOME/.scripts"
ZDOTDIR=$HOME/.config/zsh
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

