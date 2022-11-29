#!/usr/bin/env zsh

if is_mac && [[ -d "/Applications/Visual Studio Code.app" ]]; then
  path=($path "/Applications/Visual Studio Code.app/Contents/Resources/app/bin")
elif is_wsl; then
  alias code='cmd.exe /c code'
fi

if command -v code > /dev/null; then
  alias c.='code .'
fi
