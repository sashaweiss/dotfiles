if command -v fzf > /dev/null; then
  if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
  fi

  if command -v fd > /dev/null; then
    export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git'
  fi

  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi
