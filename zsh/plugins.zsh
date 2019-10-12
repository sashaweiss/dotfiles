### Install zplugin if not present
if ! [ -d "$HOME/.zplugin" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
fi

### Start of zplugin installer-added chunk
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

### Plugins

zplugin ice wait atload'_zsh_autosuggest_start' lucid
zplugin light zsh-users/zsh-autosuggestions

zplugin ice wait atload'zpcompinit; zpcdreplay' lucid
zplugin light zdharma/fast-syntax-highlighting

zplugin light romkatv/powerlevel10k

# Autosuggestions
# ref - https://github.com/zsh-users/zsh-autosuggestions#configuration

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=244' # light grey
ZSH_AUTOSUGGEST_USE_ASYNC=true # can be set to anything

# ref - https://github.com/zsh-users/zsh-autosuggestions/compare/features/completion-suggestions
ZSH_AUTOSUGGEST_STRATEGY=(history)

# Keymappings

# ref - https://github.com/zsh-users/zsh-autosuggestions#key-bindings
bindkey -M viins '^f' forward-word # next word, how `vim` `w` would advance
