#!/usr/bin/env zsh

if command -v git-machete > /dev/null; then
  alias machete-discover='git machete discover'
  alias machete-rebase='git machete traverse --whole --no-push'
  alias machete-status='git machete status --list-commits-with-hashes'
  alias machete-push='git machete traverse --whole --push'
fi
