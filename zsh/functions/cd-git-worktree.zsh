#!/usr/bin/env zsh

# Intentionally a shell function rather than
# a `git-foo`-style git custom command because
# `cd` can't be run in a subshell.
cd-git-worktree () {
  if [[ $# -ne 1 ]]; then
    echo "Missing argument: <worktree-dir>" >&2
    return 1
  fi

  cd "$1"
}
