alias cd='cd -P'
alias "cd.."='cd ..'
alias dot="cd $DOTFILES"

alias pg='ping google.com'

alias e="$EDITOR"

alias ll='ls -lFh'
alias la='ls -alhF'

alias untar='tar -xzvf'

is_wsl &&
  ACTUAL_HOME="$WINDOWS_HOME" ||
  ACTUAL_HOME="$HOME"

export WORK="$ACTUAL_HOME/dev"
alias work="cd $WORK"

export CLONE="$ACTUAL_HOME/dev/clones"
alias clones="cd $CLONE"

export PLAY="$ACTUAL_HOME/Desktop"
alias play="cd $PLAY"

export DOWN="$ACTUAL_HOME/Downloads"
alias down="cd $DOWN"
