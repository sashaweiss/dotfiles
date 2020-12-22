#!/usr/bin/env zsh

if [[ -n "$ANDROID_SDK_ROOT" ]]; then
  path=($path "$ANDROID_SDK_ROOT/platform-tools")
  path=($path "$ANDROID_SDK_ROOT/emulator")
fi
