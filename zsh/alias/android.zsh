#!/usr/bin/env zsh

if is_mac && [ -d "/Applications/Android Studio.app" ]; then
  alias android='open -a /Applications/Android\ Studio.app'
fi
