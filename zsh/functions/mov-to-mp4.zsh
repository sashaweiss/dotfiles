#! /usr/bin/env zsh

mov-to-mp4 () {
  if ! command -v avconvert > /dev/null; then
    echo "*** avconvert not installed! ***"
    return 1
  fi

  SOURCE=""
  OUTPUT=""

  if [ "$#" -eq 1 ]; then
    SOURCE="$1"
    OUTPUT="${1%.mov}.mp4"
  elif [ "$#" -eq 2 ]; then
    SOURCE="$1"
    OUTPUT="$2"
  else
    echo "Usage: avconvert <source> <output>"
    return 1
  fi

  if [[ ! "${SOURCE:l}" == *.mov ]]; then
    echo $SOURCE
    echo "** Source must have .mov extension! ***"
    return 1
  elif [[ ! "$OUTPUT" == *.mp4 ]]; then
    echo "** Output must have .mov extension! ***"
    return 1
  fi

  avconvert \
    --source "$SOURCE" \
    --output "$OUTPUT" \
    --preset PresetHEVC1920x1080 \
}
