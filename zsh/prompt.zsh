source $DOTFILES/zsh/gitstatus/zshrc.sh

setopt PROMPT_SUBST

# Thanks to https://joshdick.net/2017/06/08/my_git_prompt_for_zsh_revisited.html
git_info() {

  # Exit if not inside a Git repository
  ! git rev-parse --is-inside-work-tree > /dev/null 2>&1 && return

  # Git branch/tag, or name-rev if on detached head
  local GIT_LOCATION=${$(git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD)#(refs/heads/|tags/)}

  local AHEAD="%F{red}⇡NUMf"
  local BEHIND="%F{cyan}⇣NUM%f"
  local MERGING="%F{magenta}⚡︎%f"
  local UNTRACKED="%F{red}●%f"
  local MODIFIED="%F{yellow}●%f"
  local STAGED="%F{green}●%f"

  local -a DIVERGENCES
  local -a FLAGS

  local NUM_AHEAD="$(git log --oneline @{u}.. 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_AHEAD" -gt 0 ]; then
    DIVERGENCES+=( "${AHEAD//NUM/$NUM_AHEAD}" )
  fi

  local NUM_BEHIND="$(git log --oneline ..@{u} 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_BEHIND" -gt 0 ]; then
    DIVERGENCES+=( "${BEHIND//NUM/$NUM_BEHIND}" )
  fi

  local GIT_DIR="$(git rev-parse --git-dir 2> /dev/null)"
  if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
    FLAGS+=( "$MERGING" )
  fi

  if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
    FLAGS+=( "$UNTRACKED" )
  fi

  if ! git diff --quiet 2> /dev/null; then
    FLAGS+=( "$MODIFIED" )
  fi

  if ! git diff --cached --quiet 2> /dev/null; then
    FLAGS+=( "$STAGED" )
  fi

  local -a GIT_INFO
  # GIT_INFO+=( "\033[38;5;15m" )
  [ -n "$GIT_STATUS" ] && GIT_INFO+=( "$GIT_STATUS" )
  GIT_INFO+=( "$GIT_LOCATION" )
  [[ ${#DIVERGENCES[@]} -ne 0 ]] && GIT_INFO+=( "${(j::)DIVERGENCES}" )
  [[ ${#FLAGS[@]} -ne 0 ]] && GIT_INFO+=( "${(j::)FLAGS}" )
  echo " %F{black}on%f $GIT_INFO"
}

PROMPT=''
PROMPT+='%B%F{cyan}%n%f %F{black}at%f %F{magenta}%m%f %F{black}in%f %F{green}%1~%f$(git_info)
'
PROMPT+='%F{white}%(1j.(%j) .)%f%F{blue}>>>%f%b%F{white} '
