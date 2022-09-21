#! /usr/bin/env zsh

egs () {
  git status --porcelain | cut -c 4- | xargs $EDITOR
}

econflicts () {
  git status --porcelain | grep "UU" | cut -c 4- | xargs $EDITOR
}
