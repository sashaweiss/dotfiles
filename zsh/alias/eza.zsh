#!/usr/bin/env zsh

if command -v eza > /dev/null; then
  alias ls='eza'
  alias l='eza -lh'
  alias la='ls -alh'
fi
