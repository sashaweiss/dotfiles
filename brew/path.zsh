if [[ "$OSTYPE" == "linux-gnu" ]]; then
  path=(
    "/home/linuxbrew/.linuxbrew/bin"
    $path
  )
elif [[ "$OSTYPE" == "darwin"* ]]; then
  path=(
    "/usr/local/bin"
    $path
  )
else
  echo "Unsupported OS type: $OSTYPE"
  exit 1
fi
