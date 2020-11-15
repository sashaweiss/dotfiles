#!/usr/bin/env zsh

if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
 . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi

export NIX_PATH="$NIX_PATH:$HOME/.nix-defexpr/channels"
