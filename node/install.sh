#!/bin/zsh

nvm_dir=~/.nvm
git clone https://github.com/creationix/nvm.git "$nvm_dir"
cd "$nvm_dir"
git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`

export NVM_DIR=$nvm_dir
source $NVM_DIR/nvm.sh

nvm install node
npm install -g typescript
