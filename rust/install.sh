#!/bin/zsh

curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path -y
rustup component add rust-src
cargo install rustfmt

rustup toolchain add nightly
reload
cargo +nightly install racer
