if linux && id -u linuxbrew > /dev/null 2>&1; then
  PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
fi

export PATH
