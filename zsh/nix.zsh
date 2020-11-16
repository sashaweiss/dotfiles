#!/usr/bin/env zsh

if [ -f "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh" ]; then
  # Multi-user install
  source "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh"
elif [ -f "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
  # Single-user install on WSL
  source "$HOME/.nix-profile/etc/profile.d/nix.sh"
fi

export NIX_PATH="$NIX_PATH:$HOME/.nix-defexpr/channels"
