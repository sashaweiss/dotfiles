#!/usr/bin/env zsh

if command -v fd > /dev/null; then
  alias fd='fd --ignore-case'
  alias fda='fd --no-ignore --hidden'
  alias fds='fd --case-sensitive'
  alias fdas='fd --no-ignore --hidden --case-sensitive'
fi
