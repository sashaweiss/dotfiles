if command -v nvim > /dev/null; then
  alias vim='nvim'
  alias vimr='vim -m'
else
  alias vimr='vim -M'
fi

alias vims='vim -O'
