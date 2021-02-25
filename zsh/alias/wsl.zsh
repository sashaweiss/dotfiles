#!/usr/bin/env zsh
#
if is_wsl; then
  alias open="explorer.exe"

  alias pbcopy="clip.exe"
  alias pbpaste="clip.exe"

  alias git="git.exe"
fi
