#!/usr/bin/env zsh

if [ "$#" -ne 1 ]; then
  echo "Missing required argument: plist file!"
  exit 1
fi

plist_file="$(basename $1)"

defaults export "${plist_file:r}" "$DOTFILES/macOS/$plist_file"
