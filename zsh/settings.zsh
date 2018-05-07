if command -v nvim > /dev/null; then
  export EDITOR="nvim"
else
  export EDITOR="vim"
fi
export HOSTNAME=`hostname`
