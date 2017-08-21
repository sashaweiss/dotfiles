#!/bin/zsh

mach=$HOME/dotfiles/machines/"$(hostname)"/env_vars

if [[ -f "$mach" ]]; then source $mach; fi

export EDITOR="vim"
