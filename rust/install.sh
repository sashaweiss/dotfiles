#!/usr/bin/env zsh

curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path -y
rustup toolchain add nightly
rustup component add rust-src rustfmt rust-analysis
rustup component add rust-src rustfmt rust-analysis --toolchain nightly

if ! command -v ra_lsp_server > /dev/null; then
  TARGET="$DOTFILES/target"

  mkdir -p "$TARGET"

  if [[ -d "$TARGET/rust-analyzer" ]]; then
    pushd "$TARGET/rust-analyzer"
    git pull
  else
    git clone https://github.com/rust-analyzer/rust-analyzer "$TARGET/rust-analyzer"
    pushd "$TARGET/rust-analyzer"
  fi

  cargo xtask install
  popd
  unset TARGET
fi
