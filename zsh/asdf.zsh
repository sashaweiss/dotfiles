#!/usr/bin/env zsh

brew_prefix=$(brew --prefix asdf)

asdf_initialization="$brew_prefix/libexec/asdf.sh"
[ -f "$asdf_initialization" ] && source "$asdf_initialization"
unset asdf_initialization
