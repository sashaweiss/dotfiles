setopt PROMPT_SUBST

PROMPT=''
PROMPT+='%B%F{81}%n%f %F{black}at%f %F{177}%m%f %F{black}in%f %F{217}%1~%f$(python $DOTFILES/zsh/prompt/gitstatus.py 2> /dev/null)
'
PROMPT+='%F{105}%(1j.(%j) .)>>>%f%b %F{195}'


reset='\e[0m'
preexec() {
  echo -n "$reset"
}
