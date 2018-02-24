# Steps for installation
cuz scripts never work

## Install zsh
```sh
$ sudo ./zsh/install.sh
$ export fpath=($DOTFILES/funcs $fpath)
$ autoload -U ebon hanlon watney mac linux
```

## Install P0 software
1. brew - `./brew/install.sh`
2. git - `./git/install.sh`
3. vim - `./vim/install.sh`
4. tmux - `./tmux/install.sh`

## Link dotfiles
`./script/link`

## Install languages
1. python - `./python/install.sh`
2. node and typescript - `./node/install.sh`
3. go - `./go/install.sh` (this may be more complicated in practice)
4. scala - Complex online instructions
5. java - Complex online instructions

## Install utilities
1. ripgrep - `brew install ripgrep`
2. fzf - `brew install fzf`
3. wget - `brew install wget`
4. tree - `brew install tree`

## Install GUI utilities
1. [iTerm](https://iterm2.com/) - set up to source from $DOTFILES/iterm/...plist
2. [Powerline fonts](https://github.com/powerline/fonts)
