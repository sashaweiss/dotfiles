#!/bin/zsh

source $DOTFILES/zsh/gitstatus/zshrc.sh

PROMPT=''
# PROMPT+='${(r:$(tput cols)::-:)}'
PROMPT+='%B%F{cyan}%n %f%F{white}::%f %F{magenta}%m %f%F{white}::%f %F{green}%1~%f$(git_super_status)%f
'
PROMPT+='%F{white}%(1j.(%j) .)>>>%b %F{white}'
