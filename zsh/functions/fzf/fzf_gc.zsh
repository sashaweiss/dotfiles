#! /usr/bin/env zsh

fzf_gc () {
  # Get the commit log in oneline format and pipe it to FZF. Show the diff from
  # that commit as a preview.

  is_in_git_repo || return

  local format='%C(green)%C(bold)%cd %C(auto)%h%d %s (%an)'
  local bindings='ctrl-space:toggle-preview'

  # Extract the commit hash from the oneline, pipe it to `git show`
  local preview='\
    grep -o "[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\} [a-f0-9]\{7,\}" <<< {} \
    | cut -d " " -f 2 \
    | xargs git show --color=always \
    | bat'

  git log --oneline --date=short --format="$format" --color=always \
    | fzf --ansi --no-sort --reverse --multi \
    --height '100%' \
    --bind "$bindings" \
    --preview "$preview" \
    | grep -o "[a-f0-9]\{7,\}"
}
