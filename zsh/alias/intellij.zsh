#!/usr/bin/env zsh

if is_mac && [ -d "/Applications/IntelliJ IDEA CE.app" ]; then
  alias intellij='open -a "/Applications/IntelliJ IDEA CE.app"'
fi
