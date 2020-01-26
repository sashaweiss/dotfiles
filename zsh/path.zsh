#!/usr/bin/env zsh

typeset -U path

is_mac && path=("/usr/local/bin" $path)
is_linux && path=("/home/linuxbrew/.linuxbrew/bin" $path)

[[ -d "$HOME/.cargo" ]] && path=("$HOME/.cargo/bin" $path)
is_mac && [[ -d "/Applications/Visual Studio Code.app" ]] && path=("/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $path)
[[ -z "$GOPATH" ]] && path=("$GOPATH/bin" $path)
