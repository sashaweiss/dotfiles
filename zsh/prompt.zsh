source $DOTFILES/zsh/gitstatus/zshrc.sh

PROMPT=''
PROMPT+='%B%F{cyan}%n%f %F{black}at%f %F{magenta}%m%f %F{black}in%f %F{green}%1~%f$(git_super_status)%f
'
PROMPT+='%F{blue}%(1j.(%j) .)>>>%b %F{white}'
