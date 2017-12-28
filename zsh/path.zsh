if ebon; then
  export PYTHONPATH="/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python:/Library/Python/2.7/site-packages:/usr/.local/lib/python2.7/site-packages:$PYTHONPATH"
  export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

  export GOPATH=$(go env GOPATH)
  export GOROOT=$(go env GOROOT)

  VIM_PATH=/usr/local/Cellar/vim/8.0.0596/bin
  SCALA_PATH="/usr/local/share/scala/bin"
  GO_BIN_PATH=$GOPATH/bin
  GIT_BIN_PATH=/usr/local/Cellar/git/2.14.1/bin

  PATH+=:$SCALA_PATH
  PATH+=:$VIM_PATH
  PATH+=:$GO_BIN_PATH
  PATH+=:$GIT_BIN_PATH
elif hanlon; then
  PATH="$HOME/bin:$PATH"
  source ~/.fzf.zsh
elif watney; then
  # Nothing right now
fi

export PATH
