#! /usr/bin/env zsh

fzf_gr () {
  # Get branch list, filter so it's more useful, pipe to FZF. Get commit log as
  # a preview for the selected branch.

  is_in_git_repo || return

  local preview='\
    git log --oneline --graph --date=short --color=always \
    --pretty="format:%C(auto)%cd %h%d %s" \
    $(sed s/^..// <<< {}) | bat'

  local bindings='ctrl-space:toggle-preview'

  git branch -a --color=always \
    | grep -v '/HEAD\s' \
    | sort \
    | fzf --ansi --multi --tac \
    --height '100%' \
    --preview-window 'down:60%' \
    --bind="$bindings" \
    --preview "$preview" \
    | sed 's/^..//' \
    | sed 's/^remotes\/[^/]*\///'
}
