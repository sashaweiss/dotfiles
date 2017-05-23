#!/bin/bash

source ~/dotfiles/etc/git-completion.bash
source ~/dotfiles/etc/git-prompt.sh
source ~/dotfiles/etc/sexy-bash-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

red="\[\033[1;31m\]"
green="\[\033[1;32m\]"
yellow="\[\033[1;33m\]"
blue="\[\033[1;34m\]"
magenta="\[\033[1;35m\]"
cyan="\[\033[1;36m\]"
white="\[\033[1;37m\]"

function git_info {
  $(sexy_bash_prompt_is_on_git) && \
  echo " // [$(sexy_bash_prompt_get_git_info)$(sexy_bash_prompt_get_git_progress)]"
}

PS1="$cyan\u // $red\h // $magenta\w$green\$(git_info)\n$blue... $white"
trap '[[ -t 1  ]] && tput sgr0' DEBUG

shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# Download VimPlug
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
