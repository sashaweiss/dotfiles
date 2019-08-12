if [ -d "/Applications/Visual Studio Code.app" ]; then
  path=(
    "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
    $path
  )
fi