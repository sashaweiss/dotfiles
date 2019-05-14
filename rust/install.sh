#!/usr/bin/env zsh

curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path -y
rustup component add rust-src rustfmt rls rust-analysis
rustup toolchain add nightly
