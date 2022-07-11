#!/usr/bin/env zsh

is_wsl () {
  [ "$(uname)" = "Linux" ] && [[ "$(uname -r)" == *"Microsoft"* ]]
}
