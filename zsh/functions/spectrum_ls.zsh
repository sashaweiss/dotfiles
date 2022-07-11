#! /usr/bin/env zsh

spectrum_ls () {
  for i in {0..255}; do
    print -Pn "%${i}F${(l:3::0:)i}%f " ${${(M)$((i%8)):#7}:+$'\n'};
  done
}
