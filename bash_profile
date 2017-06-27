#!/bin/bash

VIM_PATH=/usr/local/Cellar/vim/8.0.0636/bin
export GOPATH=$(go env GOPATH)

PATH=$VIM_PATH:$PATH
PATH=$GOPATH/bin:$PATH

export PATH

source ~/dotfiles/bashrc

