#!/bin/zsh

# ZSH Plugins
plugins=(git)

export ZSH="/Users/sasha/.oh-my-zsh"

source ~/dotfiles/colors

# ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

source ~/dotfiles/prompt

unalias -m '*'
source ~/dotfiles/alias
