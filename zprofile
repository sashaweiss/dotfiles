#!/bin/zsh

if [[ ! -d ~/.oh-my-zsh ]]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec

export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="/Users/alexweiss/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export JAVA_HOME=$(/usr/libexec/java_home)

