if command -v fzf > /dev/null && [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh

  if command -v fd > /dev/null; then
    export FZF_DEFAULT_COMMAND='fd --follow --hidden --exclude .git'
  fi

  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi
