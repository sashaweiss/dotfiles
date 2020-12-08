#!/usr/bin/env zsh

typeset -U path

if [[ -d "$HOME/.cargo" ]]; then
  path=($path "$HOME/.cargo/bin")
fi

if is_mac && [[ -d "/Applications/Visual Studio Code.app" ]]; then
  path=($path "/Applications/Visual Studio Code.app/Contents/Resources/app/bin")
fi

if [[ -n "$ANDROID_SDK_ROOT" ]]; then
  path=($path "$ANDROID_SDK_ROOT/platform-tools")
  path=($path "$ANDROID_SDK_ROOT/emulator")
fi
