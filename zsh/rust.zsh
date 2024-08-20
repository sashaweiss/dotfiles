#!/usr/bin/env zsh

if command -v rustc > /dev/null; then
  # Note that this relies on knowing which toolchain to use. That means that if
  # this runs when a `rust-toolchain` file is present, and contains a toolchain
  # we don't have installed, it'll be installed.
  local rust_toolchain_root="$(rustc --print sysroot)"

  export RUST_SRC_PATH="$rust_toolchain_root/lib/rustlib/src/rust/src"
fi

if [[ -d "$HOME/.cargo" ]]; then
  path=($path "$HOME/.cargo/bin")
fi
