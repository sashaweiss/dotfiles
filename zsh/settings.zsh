if command -v nvim > /dev/null; then
  export EDITOR="nvim"
else
  export EDITOR="vim"
fi
export HOSTNAME=`hostname`

# History
HISTFILE=$HOME/.zsh_history
setopt inc_append_history share_history
