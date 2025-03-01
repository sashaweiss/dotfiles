#!/usr/bin/env zsh

if command -v git > /dev/null; then
  alias g='git'
  alias gs='g status'
  alias ga='g add'
  alias gc='g commit'
  alias gd='g diff'
  alias gdc='gd --cached'
  alias gb='g --no-pager branch --sort=-committerdate'
  alias gba='gb -a'
  alias gco='g co'
fi
