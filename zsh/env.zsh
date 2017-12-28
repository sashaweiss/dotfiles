if ebon; then
  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh

  # FZF completions
  source ~/.fzf.zsh
  export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
elif hanlon; then
elif watney; then
fi
