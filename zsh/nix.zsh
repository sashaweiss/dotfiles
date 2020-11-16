#!/usr/bin/env zsh

if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  # Multi-user install
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
elif [ -e '$HOME/.nix-profile/etc/profile.d/nix.sh' ]; then
  # Single-user install on WSL
  . '$HOME/.nix-profile/etc/profile.d/nix.sh'
fi

export NIX_PATH="$NIX_PATH:$HOME/.nix-defexpr/channels"
