# turn on vim mode
# Note: spaceship vi mode enabled in prompt.zsh
bindkey -v

# shorten key delay to .2 seconds
# most important for quickly exiting
# vi insert mode
export KEYTIMEOUT=20

# map jk to esc in insert mode
bindkey -M viins 'jk' vi-cmd-mode

# enable normal backspace behavior
bindkey "^?" backward-delete-char

# no-op the command key
bindkey -rM vicmd ':'

# start/end of line movement
bindkey -M vicmd "z" vi-end-of-line
bindkey -M vicmd 'Z' vi-digit-or-beginning-of-line

# edit zsh commands in $EDITOR
# ref - https://nuclearsquid.com/writings/edit-long-commands/
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
