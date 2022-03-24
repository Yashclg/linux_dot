#Setting Custom Paths
export ZDOTDIR=$HOME/.config/zsh
export XINITRC=$HOME/.config/X11/xinitrc
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.local/share"}
export PATH="$HOME/.local/bin/":$PATH
export PATH=$HOME/.scripts:$PATH
export LC_CTYPE="en_GB.utf8"

export TERM="xterm-256color"
export EDITOR="nvim"
export SUDO_EDITOR="nvim"
export READER="zathura"
export TERMINAL="alacritty"
export BROWSER="google-chrome-stable"
export VIDEO="mpv"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export MANPAGER="nvim +Man!"
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

