#!/usr/bin/env zsh

curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path -y
rustup toolchain add nightly
rustup component add rust-src rustfmt rust-analysis
rustup component add rust-src rustfmt rust-analysis --toolchain nightly
