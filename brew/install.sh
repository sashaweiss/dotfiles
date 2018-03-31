#!/bin/zsh

if linux && ! command -v ruby > /dev/null; then
  sudo apt-get install -y ruby
fi

if mac; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
elif linux; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
fi
