version=`brew info git | grep Cellar | awk '{print $1}' | sed 's:.*/::'`
GIT_BIN_PATH=/usr/local/Cellar/git/$version/bin
PATH+=:$GIT_BIN_PATH

export PATH
