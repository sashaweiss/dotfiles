#!/bin/zsh

curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path -y
rustup component add rust-src rustfmt-preview
cargo install racer
