if [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh
fi

if test `which rg`; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
fi

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
