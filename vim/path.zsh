version=`brew info vim | grep Cellar | awk '{print $1}' | sed 's:.*/::'`
VIM_PATH=/usr/local/Cellar/vim/$version/bin
PATH+=:$VIM_PATH
