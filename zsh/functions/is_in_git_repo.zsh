#! /usr/bin/env zsh

is_in_git_repo () {
  git rev-parse HEAD > /dev/null 2>&1
}
