#!/bin/zsh

# ZSH Plugins
if [ -f ~/.oh-my-zsh/oh-my-zsh.sh ]; then
	plugins=(git npm python sudo golang)
	export ZSH="$HOME/.oh-my-zsh"
	# ZSH_THEME="robbyrussell"
	source $ZSH/oh-my-zsh.sh
fi

source $HOME/dotfiles/colors

setopt PROMPT_SUBST
source $HOME/dotfiles/prompt

unalias -m '*'
source $HOME/dotfiles/alias

# FZF completions
if [ -f ~/.fzf.zsh ]; then
	source ~/.fzf.zsh
	export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
	export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi
