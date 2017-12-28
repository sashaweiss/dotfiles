nvm_dir=~/.nvm
git clone https://github.com/creationix/nvm.git "$nvm_dir"
cd "$nvm_dir"
git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`

if ! [ -d ~/.nvm ]; then
  mkdir ~/.nvm
fi

if test ! `which tsc`; then
  npm install -g typescript
fi
