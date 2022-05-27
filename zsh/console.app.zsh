#!/usr/bin/env zsh

CONSOLE_PATH="/System/Applications/Utilities/Console.app"

if is_mac && [[ -d $CONSOLE_PATH ]]; then
  alias console="open -a $CONSOLE_PATH"
fi
