#!/bin/zsh

if test linux; then
  sudo apt-get -y install vim
elif test mac; then
  brew install vim
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +GoInstallBinaries +qa
