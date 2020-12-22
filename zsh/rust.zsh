#!/usr/bin/env zsh

if command -v rustc > /dev/null; then
  export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
fi

if [[ -d "$HOME/.cargo" ]]; then
  path=($path "$HOME/.cargo/bin")
fi
