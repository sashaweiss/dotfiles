#!/usr/bin/env zsh

if is_mac && [ -d "/opt/homebrew/bin" ]; then
  path=("/opt/homebrew/bin" $path)
elif is_linux && [ -d "/home/linuxbrew/.linuxbrew/bin" ]; then
  path=("/home/linuxbrew/.linuxbrew/bin" $path)
fi
