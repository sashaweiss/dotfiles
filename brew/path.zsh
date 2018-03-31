if linux && command -v brew > /dev/null && [ -d "/home/linuxbrew/.linuxbrew/bin" ]; then
  PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
fi

export PATH
