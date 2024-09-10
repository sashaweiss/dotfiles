#!/usr/bin/env zsh

GIT_COMMANDS_DIR="$DOTFILES/util/git/custom-commands"

path=($path "$GIT_COMMANDS_DIR")
fpath=($fpath "$GIT_COMMANDS_DIR/completions")
