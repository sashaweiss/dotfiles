#!/usr/bin/env zsh

if is_mac && [ -d "/usr/local/bin" ]; then
  path=("/usr/local/bin" $path)
elif is_linux && [ -d "/home/linuxbrew/.linuxbrew/bin" ]; then
  path=("/home/linuxbrew/.linuxbrew/bin" $path)
fi
