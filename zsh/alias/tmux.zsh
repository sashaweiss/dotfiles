command -v tmux > /dev/null && {
  alias tmux='tmux -2u'
  alias tls='tmux ls'
  alias tat='tmux attach -t'
  alias tnew='tmux new -s'
  alias tkill='tmux kill-session -t'
}