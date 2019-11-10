#!/usr/bin/env zsh

curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path -y
rustup toolchain add nightly
rustup component add rust-src rustfmt rust-analysis
rustup component add rust-src rustfmt rust-analysis --toolchain nightly

if ! command -v ra_lsp_server > /dev/null; then
  TARGET="$DOTFILES/target"

  mkdir -P "$TARGET"
  git clone https://github.com/rust-analyzer/rust-analyzer "$TARGET/rust-analyzer"
  cd "$TARGET/rust-analyzer"
  cargo xtask install
fi
