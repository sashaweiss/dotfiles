#!/usr/bin/env zsh

mkdir -p "$HOME/.config/sol"
cp "$DOTFILES/macOS/sol/config.json" "$HOME/.config/sol/config.json"

mkdir -p "$HOME/.config/sol/scripts"
ln -fs "$DOTFILES"/macOS/sol/scripts/*.sh "$HOME/.config/sol/scripts"
