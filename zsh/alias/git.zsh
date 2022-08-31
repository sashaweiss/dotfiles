#!/usr/bin/env zsh

if command -v git > /dev/null; then
  alias g='git'
  alias gs='g status'
  alias ga='g add'
  alias gc='g commit'
  alias gd='git diff'
  alias gdc='gd --cached'
  alias gb='g --no-pager branch'
  alias gba='gb -a'
  alias gco='g checkout'
fi
