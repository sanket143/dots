#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

color_prompt=yes

# Aliases
alias ls='ls --color=auto'

# Git Branch
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/:\1/'
}

PS1='[\[\033[01;33m\]\u@\h \[\033[01;36m\]\W\[\033[01;31m\]$(parse_git_branch)\[\033[00m\] ]\$ '

# ls configurations
alias l=ls\ -1
alias ll=ls\ -l
alias la=ls\ -a

# Visual Studio Code Configuraiton
export PATH="$PATH:~/Programs/VSCode-linux-x64/bin"

# Android Configuration
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Flutter Configurations
export PATH="$PATH:~/Programs/flutter/bin"

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"

# Python Configurations
export PATH="$HOME/.local/bin:$PATH"

# Rust Configurations
export PATH="$HOME/.cargo/bin:$PATH"

# Deno Configurations
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"


# Go Configurations
export GOPATH="$HOME/go"
export PATH="$HOME/go/bin:$PATH"

# Java Configurations
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk

# Lisa Configurations
source ~/.lisarc
