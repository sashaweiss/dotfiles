#!/usr/bin/env zsh

BUILT_FROM_SOURCE_BIN_DIR="$WORK/tools/bin"
mkdir -p "$BUILT_FROM_SOURCE_BIN_DIR"

path=($path "$BUILT_FROM_SOURCE_BIN_DIR")
