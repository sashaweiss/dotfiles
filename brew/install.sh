#!/bin/zsh

if linux && ! command -v ruby > /dev/null; then
  sudo apt-get install -y ruby
fi

if mac; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
elif linux; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)" < /dev/null
fi

brew install fzf wget tree fd ripgrep exa bat htop sashaweiss/projects/itree
