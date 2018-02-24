if test `which go`; then
  export GOPATH=$(go env GOPATH)
  export GOROOT=$(go env GOROOT)

  GO_BIN_PATH=$GOPATH/bin
  PATH+=:$GO_BIN_PATH

  export PATH
fi
