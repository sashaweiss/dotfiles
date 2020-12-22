#!/usr/bin/env zsh

if is_mac && [[ -d "/Applications/Visual Studio Code.app" ]]; then
  path=($path "/Applications/Visual Studio Code.app/Contents/Resources/app/bin")
fi
