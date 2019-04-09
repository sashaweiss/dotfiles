# Autosuggestions
# ref - https://github.com/zsh-users/zsh-autosuggestions#configuration

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244' # light grey
ZSH_AUTOSUGGEST_USE_ASYNC=true # can be set to anything

# ref - https://github.com/zsh-users/zsh-autosuggestions/compare/features/completion-suggestions
ZSH_AUTOSUGGEST_STRATEGY=(history)

# Keymappings

# ref - https://github.com/zsh-users/zsh-autosuggestions#key-bindings
bindkey -M viins '^f' forward-word # next word, how `vim` `w` would advance
