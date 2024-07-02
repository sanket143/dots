color_prompt=yes

# Aliases
alias ls="ls --color=auto"
alias gsu='git submodule update'
alias gc='git checkout'
alias gd='git diff'
alias grs='git reset --hard'
alias gp='git pull'

# Git Branch
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/:\1/'
}

PS1='[\[\033[01;33m\]\u@\h \[\033[01;36m\]\W\[\033[01;31m\]$(parse_git_branch)\[\033[00m\] ]\$ '

# ls configurations
alias l=ls\ -1
alias ll=ls\ -l
alias la=ls\ -a

. "$HOME/.cargo/env"

export HELIX_RUNTIME=$HOME/Remote/community/helix/runtime
