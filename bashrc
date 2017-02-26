#!/bin/bash

source ~/dotfiles/etc/git-completion.bash
source ~/dotfiles/etc/git-prompt.sh
source ~/dotfiles/etc/sexy-bash-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

red="\[\033[0;31m\]"
green="\[\033[0;32m\]"
yellow="\[\033[0;33m\]"
blue="\[\033[0;34m\]"
magenta="\[\033[0;35m\]"
cyan="\[\033[0;36m\]"
white="\[\033[0;37m\]"

function git_info {
  $(sexy_bash_prompt_is_on_git) && \
  echo " [$(sexy_bash_prompt_get_git_info)$(sexy_bash_prompt_get_git_progress)]" # From sexy-bash-prompt
  # echo -n "$(__git_ps1)" # Github-provided
}

#PS1="$green\u $white| $red\h $white| $cyan\t $white| $magenta\W\$(git_info) $white\$ "
PS1="$green\u $white| $red\h $white| $magenta\W\$(git_info) $white\$ "

shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
