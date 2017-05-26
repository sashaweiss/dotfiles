#!/bin/bash

source ~/dotfiles/bashrc

export PYTHONPATH="/usr/.local/lib/python2.7/site-packages:$PYTHONPATH"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

VIM_PATH=/usr/local/Cellar/vim/8.0.0596/bin
SCALA_PATH="/usr/local/share/scala/bin"
export PATH=$VIM_PATH:$PATH:$SCALA_PATH

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

