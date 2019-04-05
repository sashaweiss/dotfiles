#!/usr/bin/env zsh

curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path -y
rustup component add rust-src rustfmt
rustup toolchain add nightly
reload
cargo +nightly install racer
