### Install zinit if not present
if ! [ -d "$HOME/.zinit" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
fi

### Start of zinit installer-added chunk
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

### Plugins

zinit ice wait atload'_zsh_autosuggest_start' lucid
zinit light zsh-users/zsh-autosuggestions

zinit ice wait atload'zpcompinit; zpcdreplay' lucid

zinit light zdharma/fast-syntax-highlighting
zinit light romkatv/powerlevel10k

# See `completions.zsh` for some configuration
zinit light Aloxaf/fzf-tab

# Autosuggestions
# ref - https://github.com/zsh-users/zsh-autosuggestions#configuration

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244' # light grey
ZSH_AUTOSUGGEST_USE_ASYNC=true # can be set to anything

# ref - https://github.com/zsh-users/zsh-autosuggestions/compare/features/completion-suggestions
ZSH_AUTOSUGGEST_STRATEGY=(history)

# Keymappings

# ref - https://github.com/zsh-users/zsh-autosuggestions#key-bindings
bindkey -M viins '^f' vi-forward-word # next word, how `vim` `w` would advance

# delete backwards by vi-word, ref - https://unix.stackexchange.com/questions/250690/how-to-configure-ctrlw-as-delete-word-in-zsh
vi-backward-delete-word() {
    local WORDCHARS=${WORDCHARS/\//}
    zle backward-delete-word
}
zle -N vi-backward-delete-word
bindkey -M viins '^w' vi-backward-delete-word # delete a word, how `vim` `b` would retreat
