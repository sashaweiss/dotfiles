#!/usr/bin/env zsh

typeset -U path
path=(
  "/usr/local/bin"
  $path
)

[[ -d "$HOME/.cargo" ]] && path=("$HOME/.cargo/bin" $path)
[[ -d "/Applications/Visual Studio Code.app" ]] && path=("/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $path)
[[ -z "$GOPATH" ]] && path=("$GOPATH/bin" $path)
