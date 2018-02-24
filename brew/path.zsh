if linux && test `which brew`; then
  PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
elif test `which brew`; then
  PATH="/usr/local/bin:$PATH"
fi

export PATH
