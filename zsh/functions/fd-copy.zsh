#! /usr/bin/env zsh

fd-copy () {
  if [ "$#" -ne 2 ]; then
    echo "*** Unrecognized arguments: $@ ***"
    return 1
  fi

  if ! command -v fd > /dev/null; then
    echo "*** fd not installed! ***"
    return 1
  fi

  fd -t f "$1" | xargs -I{} cp "{}" "$2"
}
