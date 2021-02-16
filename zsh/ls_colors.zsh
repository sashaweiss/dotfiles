#!/usr/bin/env zsh

if command -v vivid > /dev/null; then
  export LS_COLORS="$(vivid generate $DOTFILES/util/vivid/jellybeans_mod.yml)"
  # export LS_COLORS="$(vivid generate jellybeans)"
else
  # See: https://geoff.greer.fm/lscolors
  export LS_COLORS='di=1;34:ln=36:so=32:pi=33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'
fi
