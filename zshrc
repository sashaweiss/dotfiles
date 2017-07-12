#!/bin/zsh

# ZSH Plugins
plugins=(git)

export ZSH="/Users/alexweiss/.oh-my-zsh"

source ~/dotfiles/colors
source ~/dotfiles/theme
source $ZSH/oh-my-zsh.sh
unalias -m '*'
source ~/dotfiles/alias
