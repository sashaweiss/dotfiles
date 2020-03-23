command -v git > /dev/null && {
  alias g='git'
  alias gs='g status'
  alias ga='g add'
  alias gc='g commit'
  alias gd='git diff'
  alias gdc='gd --cached'
  alias gb='g --no-pager branch'
  alias gba='gb -a'
  alias gco='g checkout'
  alias glg='g lg'
  alias gskip='g update-index --skip-worktree'
  alias gnoskip='g update-index --no-skip-worktree'
}
