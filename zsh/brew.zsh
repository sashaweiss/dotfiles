#!/usr/bin/env zsh

if is_mac && [ -d "$BREW_PREFIX/bin" ]; then
  path=("$BREW_PREFIX/bin" $path)
fi
