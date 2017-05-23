source ~/.bashrc

export PYTHONPATH="/usr/.local/lib/python2.7/site-packages:$PYTHONPATH"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

VIM_PATH=/usr/local/Cellar/vim/8.0.0596/bin
SCALA_PATH="/usr/local/share/scala/bin"
export PATH=$VIM_PATH:$PATH:$SCALA_PATH

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

alias cd="cd -P"
alias back='cd "$OLDPWD"'
alias wifioff='networksetup -setairportpower en0 off'
alias wifion='networksetup -setairportpower en0 on'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gdc='git diff --cached'

alias ll='ls -lh'
alias la='ls -a'
alias lla='ls -lha'

alias tmux='tmux -2'
