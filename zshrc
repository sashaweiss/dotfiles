#!/bin/zsh

# ZSH Plugins
if [ -f ~/.oh-my-zsh/oh-my-zsh.sh ]; then
	plugins=(git npm python sudo golang)
	export ZSH="$HOME/.oh-my-zsh"
	# ZSH_THEME="robbyrussell"
	source $ZSH/oh-my-zsh.sh
fi

setopt PROMPT_SUBST
source $HOME/dotfiles/prompt

source $HOME/dotfiles/colors

unalias -m '*'
source $HOME/dotfiles/alias

export EDITOR="vim"

# Source machine-specific environment variables
mach=$HOME/dotfiles/machines/"$(hostname)"/env
if [[ -f "$mach" ]]; then source $mach; fi
