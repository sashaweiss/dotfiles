#!/usr/bin/env zsh

BUILT_FROM_SOURCE_BIN_DIR="$WORK/tools/bin"

if [[ -d "$BUILT_FROM_SOURCE_BIN_DIR" ]]; then
  path=($path "$BUILT_FROM_SOURCE_BIN_DIR")
fi
