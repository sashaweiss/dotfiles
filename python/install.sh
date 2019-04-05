#!/usr/bin/env zsh

if ! command -v pip > /dev/null; then
  curl https://bootstrap.pypa.io/get-pip.py > get-pip.py
  sudo python get-pip.py
  rm get-pip.py
fi

sudo pip install pipenv
