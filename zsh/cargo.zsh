#!/usr/bin/env zsh

if [[ -d "$HOME/.cargo" ]]; then
  path=($path "$HOME/.cargo/bin")
fi
