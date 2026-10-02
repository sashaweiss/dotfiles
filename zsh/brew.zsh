#!/usr/bin/env zsh

if is_mac && [ -d "$BREW_PREFIX/bin" ]; then
  path=("$BREW_PREFIX/bin" $path)
fi

if is_mac && [ -d "$BREW_PREFIX/share/zsh/site-functions" ]; then
  fpath=($fpath "$BREW_PREFIX/share/zsh/site-functions")
fi
