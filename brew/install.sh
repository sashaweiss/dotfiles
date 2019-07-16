#!/usr/bin/env zsh

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
else
  echo "Unsupported OS type: $OSTYPE"
  exit 1
fi

brew bundle
