if command -v nvim > /dev/null; then
  export EDITOR="nvim"
else
  export EDITOR="vim"
fi
export HOSTNAME=`hostname`

# History
HISTSIZE=100000
SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history
setopt hist_ignore_all_dups hist_reduce_blanks share_history hist_verify
