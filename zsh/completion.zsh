#!/usr/bin/env zsh

autoload -Uz compinit
compinit

# Case-insensitive tab-completion
zstyle ':completion:*' matcher-list 'r:|?=** m:{a-z\-}={A-Z\_}'

# Highlight options in non-fzf-tab completions
zstyle ':completion:*' menu select

# Use LS_COLORS for zsh completions
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

if command -v fzf > /dev/null; then
  # Functionally disable this fzf-tab feature, which
  # defaults to `/`, by mapping it to a character ("=") that appears rarely in paths.
  zstyle ':fzf-tab:*' continuous-trigger '='
fi

