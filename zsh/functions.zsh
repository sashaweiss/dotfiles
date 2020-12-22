#!/usr/bin/env zsh

function_dirs=("$DOTFILES/zsh/functions" "$DOTFILES/zsh/functions/fzf")
for dir in $function_dirs; do
  # don't surround in quotes to get the expansion
  # (x:t) extracts just the executable filenames, minus the dir name
  autoload -Uz $dir/*(.x:t)
  fpath=("$dir" $fpath)
done
unset function_dirs
