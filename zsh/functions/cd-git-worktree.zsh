#!/usr/bin/env zsh

# Intentionally a shell function rather than
# a `git-foo`-style git custom command because
# `cd` can't be run in a subshell.
cd-git-worktree () {
  cd "$@"
}
