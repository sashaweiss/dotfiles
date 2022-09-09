#! /usr/bin/env zsh

e_worktree () {
  git status --porcelain | cut -c 4- | xargs $EDITOR
}

e_conflicts () {
  git status --porcelain | grep "UU" | cut -c 4- | xargs $EDITOR
}
