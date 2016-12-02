source ~/.bashrc

export PYTHONPATH="/usr/.local/lib/python2.7/site-packages:$PYTHONPATH"
export SCALAPATH="/usr/local/share/scala"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

NODE_PATH=/usr/local/lib/node_modules

export ANDROID_HOME="~/Library/Android/sdk"
export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/3.4/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$SCALAPATH/bin

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

alias celar="clear"
alias cd="cd -P"

readmd () {
    if [ "$#" -ne 1 ]; then
			echo "Usage: readmd <path to markdown file>"
    else
        pandoc $1 | lynx -stdin
    fi
}

