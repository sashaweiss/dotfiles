#!/usr/bin/env zsh

local asdf_prefix="$BREW_PREFIX/opt/asdf"
local asdf_initialization="$asdf_prefix/libexec/asdf.sh"

[ -f "$asdf_initialization" ] && source "$asdf_initialization"
