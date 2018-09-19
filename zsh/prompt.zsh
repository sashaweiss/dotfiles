source $DOTFILES/zsh/gitstatus/zshrc.sh

setopt PROMPT_SUBST

git_info() {
  data=`git status -b --porcelain 2> /dev/null`
  if [[ $? -eq 0 ]]; then
    n_staged=`echo "$data" | grep -c "^[ADM]"`
    n_mod=`echo "$data" | grep -c "^ [ADM]"`
    n_ut=`echo "$data" | grep -c "^??"`

    branch_regex="^## ([a-zA-Z0-9]+)\.{3}([a-zA-Z0-9/]*)"
    [[ "$data" =~ "$branch_regex" ]]
    l_branch=$match[1]
    r_branch=$match[2]

    hud="$l_branch"
    if [[ "$n_staged" -ne "0" ]] || [[ "$n_mod" -ne "0" ]] || [[ "$n_ut" -ne "0" ]]; then
      hud+="..."
    fi

    # if [[ -z "$r_branch" ]]; then
    #   ah_beh="`git rev-list --left-right --count $l_branch...$r_branch` "
    #   ahead=`echo $ah_beh | cut -d ' ' -f1`
    #   behind=`echo $ah_beh | cut -d ' ' -f2`

    #   if [[ "$ahead" -ne "0" ]] || [[ "$behind" -ne "0" ]]; then
    #     hud+=" ["
    #   fi
    #   if [[ "$ahead" -ne "0" ]]; then
    #     hud+=$ahead"↑"
    #   fi
    #   if [[ "$behind" -ne "0" ]]; then
    #     hud+=$behind"↓"
    #   fi
    #   if [[ "$ahead" -ne "0" ]] || [[ "$behind" -ne "0" ]]; then
    #     hud+="]"
    #   fi
    # fi

    echo " %F{black}on%f %F{red}$hud%f"
  fi
}

PROMPT=''
PROMPT+='%B%F{cyan}%n%f %F{black}at%f %F{magenta}%m%f %F{black}in%f %F{green}%1~%f$(git_info)
'
PROMPT+='%F{white}%(1j.(%j) .)%f%F{blue}>>>%f%b%F{white} '
