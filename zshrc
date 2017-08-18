#!/bin/zsh

# ZSH Plugins
plugins=(git npm python sudo)

export ZSH="$HOME/.oh-my-zsh"

source $HOME/dotfiles/colors

# ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

setopt PROMPT_SUBST
source $HOME/dotfiles/prompt

unalias -m '*'
source $HOME/dotfiles/alias

# FZF completions
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

