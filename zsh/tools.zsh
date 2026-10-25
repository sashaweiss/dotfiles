#!/usr/bin/env zsh

path=($path "$WORK/tools/bin")
fpath=($fpath "$WORK/tools/bin/completions")
path=($path "$HOME/.local/bin")

# Configuration of things that live in tools/bin.

if command -v moat > /dev/null; then
  source <(moat --generate-completion-script zsh)
fi
