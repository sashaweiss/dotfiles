#!/usr/bin/env zsh

defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

extensions=(
  'dustinsanders.an-old-hope-theme-vscode'
  'matklad.ra-lsp'
  'ms-python.python'
  'nonylene.dark-molokai-theme'
  'rust-lang.rust'
  'timonwong.shellcheck'
  'vscodevim.vim'
)

for extension in "${extensions[@]}"; do
  code --install-extension $extension
done
