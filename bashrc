#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

color_prompt=yes

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="$PATH:$HOME/.local/bin"
export EDITOR=nvim

function _startup {
  pulseaudio -D
  pcmanfm -d &
  startx
}

if [[ "$(tty)" = "/dev/tty1" ]]; then
  pgrep dwm || _startup
fi

# Git Branch
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/:\1/'
}

PS1='[\[\033[01;33m\]\u@\h \[\033[01;36m\]\W\[\033[01;31m\]$(parse_git_branch)\[\033[00m\] ]\$ '

# ls configurations
alias l=ls\ -1
alias ll=ls\ -l
alias la=ls\ -a

# NVM Configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Lite IDE
# export PATH="$PATH:~/Programs/lite-xl/bin/"

# Yarn Configuraitons
export PATH="$PATH:~/.yarn/bin"

# Cargo Configuration
source "$HOME/.cargo/env"

# Flutter Configuration
export PATH="$PATH:$HOME/Development/flutter/bin"

# VSCode Configuration
export PATH="$PATH:$HOME/Programs/VSCode-linux-x64/bin"

# Go Configuration
export GOPATH="$HOME/Remote/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"

# TTChat
export PATH="$PATH:~/Remote/community/ttchat/bin"

# Gnome Keyring
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
