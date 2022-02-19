#	 _______| |__  _ __ ___
#	|_  / __| '_ \| '__/ __|
#	 / /\__ \ | | | | | (__
#	/___|___/_| |_|_|  \___|

#Basic Settings
source ~/.config/zsh/.zprofile
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' #Case Insensitice

#Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 

# Prompt Settings
eval "$(starship init zsh)"

#PROMPT='%F{yellow}%1~%f %F{green}≎%f '
#PROMPT='%F{yellow}%~%f %F{red}%f '

## Git Settings
#autoload -Uz vcs_info
#precmd_vcs_info() { vcs_info }
#precmd_functions+=( precmd_vcs_info )
#setopt prompt_subst
#RPROMPT=\$vcs_info_msg_0_
#zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
#zstyle ':vcs_info:*' enable git

# History in cache directory:
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.config/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

#Aliases
alias pac='sudo pacman'
alias aura='sudo aura'
alias suck='rm -f config.h ; sudo make clean install'
alias commit='git add -A; git commit -m'
alias misc='git add -A; git commit -m "misc"'
alias push='git push'
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias cp='vcp'
alias svim='sudo nvim'
alias fm='ranger'
alias ls='exa -al --color=always --group-directories-first'
alias q='shutdown now'
alias r='reboot'
alias mkdir='mkdir -pv'
alias mount='sudo mount'
alias umount='sudo umount'
alias w='feh --recursive --randomize --bg-fill /home/sdk/Pictures/wallpapers'
alias p='python'
alias g='g++'
alias vr='sudo virsh net-start default'
alias google='googler'
alias grep='grep --color=auto'
alias stimeshift='sudo timeshift-gtk'
alias etcher='sudo etcher'
alias smci='sudo make clean install'
alias clock='tty-clock -c -t -s'
alias clock='tty-clock -c -s -t -B -C 4'
alias reflectorM='reflector --age 6 --latest 21 --fastest 21 --threads 21 --sort rate --protocol https --save /etc/pacman.d/mirrorlist'

# Extracting Files
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

##### Fetch Programs #####
#paleofetch
#fortune
neofetch
#pfetch
#fm6000 -random -c random
#colorscript random
