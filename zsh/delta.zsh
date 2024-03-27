#!/usr/bin/env zsh

if command -v delta > /dev/null; then
  export DELTA_PAGER='less -+F'
fi
