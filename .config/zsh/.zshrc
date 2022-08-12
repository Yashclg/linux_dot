# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#	 _______| |__  _ __ ___
#	|_  / __| '_ \| '__/ __|
#	 / /\__ \ | | | | | (__
#	/___|___/_| |_|_|  \___|

#Sourcing other Files
source $ZDOTDIR/.zprofile
source $ZDOTDIR/zsh-functions
source $ZDOTDIR/zsh-settings
source $ZDOTDIR/zsh-keymaps
source $ZDOTDIR/zsh-prompt
source $ZDOTDIR/zsh-aliases
source $ZDOTDIR/zsh-vi-mode
source $ZDOTDIR/lf-icons

#Adding Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

eval "$(/brew/homebrew/bin/brew shellenv)"
