#!/bin/zsh

alias cd='cd -P'
alias "cd.."='cd ..'
alias dot='cd $HOME/dotfiles'

alias pg='ping google.com'
alias d='date'

alias ll='ls -lFh'
alias la='ls -alhF'

alias untar='tar -xzvf'

if ebon; then
  export WORK="$HOME/Documents/projects"
  alias work="cd $WORK"
  export PLAY="$HOME/Desktop"
  alias play="cd $PLAY"
  export DOWN="$HOME/Downloads"
  alias down="cd $DOWN"

  alias shootme='ssh hanlon'

  eval $(thefuck --alias)
elif hanlon; then
  alias ls='ls --color=auto'
elif watney; then
  # Nothing at present
fi
