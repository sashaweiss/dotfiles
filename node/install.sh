#!/usr/bin/env zsh

nvm_dir=~/.nvm
git clone https://github.com/creationix/nvm.git "$nvm_dir"
cd "$nvm_dir"

export NVM_DIR=$nvm_dir
source $NVM_DIR/nvm.sh

nvm install node
npm install -g typescript
