#!/usr/bin/env zsh

if [[ -d "$HOME/Library/Android/sdk" ]]; then
  export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
  export ANDROID_HOME="$ANDROID_SDK_ROOT" # Some older apps want this

  path=($path "$ANDROID_SDK_ROOT/platform-tools")
  path=($path "$ANDROID_SDK_ROOT/emulator")
fi
