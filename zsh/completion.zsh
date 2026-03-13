#!/usr/bin/env zsh

autoload -Uz compinit
compinit

# Never suggest _-prefixed completion-provider functions
zstyle ':completion:*:functions' ignored-patterns '_*'

# Case-insensitive tab-completion
zstyle ':completion:*' matcher-list 'r:|?=** m:{a-z\-}={A-Z\_}'

# Jump straight to completions via the menu, rather than completing to a prefix
# and needing a second tab to launch the menu.
setopt MENU_COMPLETE

# Highlight options in non-fzf-tab completions
zstyle ':completion:*' menu select

# Use LS_COLORS for zsh completions
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

if command -v fzf > /dev/null; then
  # Functionally disable this fzf-tab feature, which
  # defaults to `/`, by mapping it to a character ("=") that appears rarely in paths.
  zstyle ':fzf-tab:*' continuous-trigger '='
fi

