#!/usr/bin/env zsh

# *** vim mode ***

# turn on vim mode
bindkey -v

# shorten key delay to .2 seconds
# most important for quickly exiting
# vi insert mode
export KEYTIMEOUT=20

# map jk to esc in insert mode
bindkey -M viins 'jk' vi-cmd-mode

# if there's no fzf, we won't have a C-R history reverse-search mapping. Set it up now.
if ! command -v fzf > /dev/null; then
  bindkey '^R' history-incremental-search-backward
fi

# map non-vi-mode line editing in insert mode
bindkey -M viins '^w' backward-delete-word
bindkey -M viins '^u' backward-kill-line

# enable normal backspace behavior
bindkey "^?" backward-delete-char

# no-op the command key
bindkey -rM vicmd ':'

# start/end of line movement
bindkey -M vicmd 'z' vi-end-of-line
bindkey -M viins '^e' vi-end-of-line
bindkey -M vicmd 'Z' vi-digit-or-beginning-of-line
bindkey -M viins '^a' vi-digit-or-beginning-of-line

# edit zsh commands in $EDITOR
# ref - https://nuclearsquid.com/writings/edit-long-commands/
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
