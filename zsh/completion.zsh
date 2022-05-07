#!/usr/bin/env zsh

autoload -Uz compinit
compinit

# Case-insensitive tab-completion
zstyle ':completion:*' matcher-list 'r:|?=** m:{a-z\-}={A-Z\_}'

# Highlight options in non-fzf-tab completions
zstyle ':completion:*' menu select

# Use LS_COLORS for zsh completions
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# An fzf-tab feature I don't really understand, which defaults to `/`.
# Remap it to a key I use less frequently in paths 😊
zstyle ':fzf-tab:*' continuous-trigger '='

