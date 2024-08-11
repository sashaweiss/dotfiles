#!/usr/bin/env zsh

if ! command -v fzf > /dev/null; then
  return
fi

# fuzzy finder
# ref - https://github.com/junegunn/fzf
#
# helpful sources
# refs:
#   - https://github.com/junegunn/fzf/wiki/examples
#   - https://medium.com/@sidneyliebrand/how-fzf-and-ripgrep-improved-my-workflow-61c7ca212861
#   - http://owen.cymru/fzf-ripgrep-navigate-with-bash-faster-than-ever-before/
#
# - @nathanshelly

# <<<< completion >>>>

fzf_prefix="$BREW_PREFIX/opt/fzf/shell"
source "$fzf_prefix/completion.zsh"
source "$fzf_prefix/key-bindings.zsh"

# <<<< options >>>>

_fd_with_default_args='fd --hidden --follow --exclude ".git" --strip-cwd-prefix'

_fzf_preview_window="--preview-window=down:75%"
_fzf_preview_window_hidden="${_fzf_preview_window}:hidden"

export FZF_DEFAULT_OPTS="--height 50% --reverse --no-mouse --cycle --ansi \
 $_fzf_preview_window \
 --bind ctrl-space:toggle-preview,ctrl-e:preview-down,ctrl-d:preview-page-down,ctrl-y:preview-up,ctrl-u:preview-page-up"

_fzf_bat_preview="--preview='bat --style=numbers --color=always {}'"
export FZF_CTRL_T_OPTS="$_fzf_bat_preview $_fzf_preview_window_hidden"
export FZF_EDIT_OPTS="$_fzf_bat_preview"


# <<<< commands >>>>

export FZF_DEFAULT_COMMAND="$_fd_with_default_args"

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Disable. Overridden by a custom M-C command anyway.
FZF_CTRL_C_COMMAND=""

# << zsh functions -> widgets >>
zle -N fzf-edit-widget


# -- Git Integration --
#
# See also:
#   - https://junegunn.kr/2016/07/fzf-git
#   - https://gist.github.com/junegunn/8b572b8d4b5eddd8b85e5f4d40f17236
#
# Thanks to @nathanshelly 💙

# join multi-line output from fzf
join-lines() {
  local item
  while read item; do
    echo -n "${(q)item} "
  done
}

# Generate an `fzf-g<char>-widget () { ... }` function, with `<char`> provided
# as an argument. Requires that a function `fzf-g<char>` exist in `$PATH`. See
# also `./functions/fzf/`.
bind-git-helper() {
  local c
  for c in $@; do
    eval "fzf-g$c-widget() {\
      zle reset-prompt;\
      local result=\$(fzf_g$c | join-lines);\
      zle reset-prompt;\
      LBUFFER+=\$result\
    }"
    eval "zle -N fzf-g$c-widget"
    eval "bindkey '\e$c' fzf-g$c-widget"
  done
}

# r - list branches (including remotes)
# c - list commits
bind-git-helper r c
unset -f bind-git-helper
