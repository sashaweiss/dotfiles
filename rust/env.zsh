if command -v rustc > /dev/null; then
  export RUST_SRC_PATH=`rustc --print sysroot`/lib/rustlib/src/rust/src
fi
