source $DOTFILES/zsh/gitstatus/zshrc.sh

setopt PROMPT_SUBST

PROMPT=''
PROMPT+='%B%F{cyan}%n%f %F{black}at%f %F{magenta}%m%f %F{black}in%f %F{green}%1~%f$(git_super_status)%f
'
PROMPT+='%F{white}%(1j.(%j) .)%f%F{blue}>>>%f%b%F{white} '
