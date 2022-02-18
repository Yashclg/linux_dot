#	| |__   __ _ ___| |__  _ __ ___
#	| '_ \ / _` / __| '_ \| '__/ __|
#	| |_) | (_| \__ \ | | | | | (__
#	|_.__/ \__,_|___/_| |_|_|  \___|

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Basic Settings
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="brave"
export MANPAGER="nvim +Man!"

#Environtment Variables
PATH="$PATH:/$HOME/.local/bin/"
PATH="$PATH:/$HOME/.scripts"

#Prompt
#PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"

#Aliases
alias pac='sudo pacman'
alias aura='sudo aura'
alias suck='rm -f config.h ; sudo make clean install'
alias commit='git add -A; git commit -m'
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias svim='sudo nvim'
alias fm='ranger'
alias mount='sudo mount'
#alias ls='exa -al --color=always --group-directories-first'


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
