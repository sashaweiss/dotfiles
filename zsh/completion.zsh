#!/usr/bin/env zsh

autoload -U compinit
compinit

# Case-insensitive
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Highlight options in tab-complete
zstyle ':completion:*' menu select
