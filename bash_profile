#!/bin/bash

VIM_PATH=/usr/local/Cellar/vim/8.0.0636/bin
export GOPATH=$(go env GOPATH)

PATH=$VIM_PATH:$PATH
PATH=$GOPATH/bin:$PATH

export PATH

export NVM_DIR="/usr/local/opt/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/dotfiles/bashrc

