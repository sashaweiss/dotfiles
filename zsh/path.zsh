#!/usr/bin/env zsh

typeset -U path
path=(
  "/usr/local/bin"
  "$HOME/.cargo/bin"
  "$HOME/.rvm/bin"
  $path
)

command -v go > /dev/null && path=("$GOPATH/bin" $path)
