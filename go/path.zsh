if command -v go > /dev/null; then
  export GOPATH=$(go env GOPATH)
  export GOROOT=$(go env GOROOT)

  path=(
    "$GOPATH/bin"
    $path
  )
fi
