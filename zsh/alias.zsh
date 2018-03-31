alias cd='cd -P'
alias "cd.."='cd ..'
alias dot='cd $HOME/dotfiles'

alias pg='ping google.com'
alias d='date'

alias ll='ls -lFh'
alias la='ls -alhF'

alias untar='tar -xzvf'

alias reload='source ~/.zshrc'

if test ebon; then
  export WORK="$HOME/Documents/projects"
  alias work="cd $WORK"

  export CLONE="$HOME/Documents/clones"
  alias clones="cd $CLONE"

  export PLAY="$HOME/Desktop"
  alias play="cd $PLAY"

  export DOWN="$HOME/Downloads"
  alias down="cd $DOWN"
elif test hanlon; then
  alias ls='ls --color=auto'
fi
