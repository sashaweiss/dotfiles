if ! [ -d ~/.nvm ]; then
  mkdir ~/.nvm
fi

if test ! `which tsc`; then
  npm install -g typescript
fi
