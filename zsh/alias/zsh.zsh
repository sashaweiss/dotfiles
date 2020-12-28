#!/usr/bin/env zsh

alias cd='cd -P'
alias "cd.."='cd ..'
alias dot="cd $DOTFILES"

alias pg='ping google.com'

alias e="$EDITOR"

alias ll='ls -lFh'
alias la='ls -alhF'

alias untar='tar -xzvf'

if is_wsl; then
  export WINDOWS_ROOT="/mnt/c"
  export WINDOWS_HOME="$WINDOWS_ROOT/Users/saweiss"
fi

if is_wsl; then
  ACTUAL_HOME="$WINDOWS_HOME"
else
  ACTUAL_HOME="$HOME"
fi

export WORK="$ACTUAL_HOME/dev"
alias work="cd $WORK"

export CLONES="$ACTUAL_HOME/dev/clones"
alias clones="cd $CLONES"

export PLAY="$ACTUAL_HOME/Desktop"
alias play="cd $PLAY"

export DOWN="$ACTUAL_HOME/Downloads"
alias down="cd $DOWN"

