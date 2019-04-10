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

# Case-insensitive
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Highlight options in tab-complete
zstyle ':completion:*' menu select

# Move-by-word does not use any non-alphanumeric characters as part of words
WORDCHARS=
