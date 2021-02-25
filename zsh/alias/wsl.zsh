#!/usr/bin/env zsh
#
if is_wsl; then
  alias open="explorer.exe"

  alias pbcopy="clip.exe"
  alias pbpaste='powershell.exe -command "Get-Clipboard"'
fi
