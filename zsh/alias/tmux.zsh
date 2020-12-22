#!/usr/bin/env zsh

if command -v tmux > /dev/null; then
  alias tls='tmux ls'
  alias tat='tmux attach -t'
  alias tnew='tmux new -s'
  alias tkill='tmux kill-session -t'
fi
