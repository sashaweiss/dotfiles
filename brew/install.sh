#!/bin/zsh

if test linux && ! test `which ruby`; then
  sudo apt-get install -y ruby
fi

if test mac; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
elif test linux; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
fi
