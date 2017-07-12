#!/bin/zsh

# ZSH Plugins
plugins=(git)

export ZSH="/Users/alexweiss/.oh-my-zsh"

source ~/dotfiles/colors
source $ZSH/oh-my-zsh.sh
source ~/dotfiles/theme
unalias -m '*'
source ~/dotfiles/alias
