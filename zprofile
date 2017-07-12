#!/bin/zsh

if [[ ! -d ~/.oh-my-zsh ]]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

VIM_PATH="/usr/local/Cellar/vim/8.0.0636/bin"
export GOPATH=$(go env GOPATH)

PATH="$VIM_PATH:$PATH"
PATH="$GOPATH/bin:$PATH"

export PATH

export NVM_DIR="/usr/local/opt/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

