#! /usr/bin/env zsh

mov-to-mp4 () {
  if ! command -v avconvert > /dev/null; then
    echo "*** avconvert not installed! ***"
    return 1
  fi

  if [ "$#" -ne 1 ]; then
    echo "*** Unrecognized arguments: $@ ***"
    return 1
  fi

  if [[ ! "$1" == *.mov ]]; then
    echo "** Input file must have .mov extension! ***"
    return 1
  fi

  output="${1%.mov}.mp4"
  avconvert \
    --source "$1" \
    --output "$output" \
    --preset PresetHEVC1920x1080 \
}
