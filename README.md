# sasha's .files

My personal dotfiles. `zsh`+`neovim`+`tmux`+`Visual Studio Code`.

## Download and install

Clone the repo:

```sh
$ git clone git@github.com:sashaweiss/dotfiles $HOME/.files
```

**To install to somewhere other than $HOME/.files, make sure to adjust the $DOTFILES environment variable!**

Link the appropriate files:

```sh
export DOTFILES="$HOME/.files"
./link
```

...and you should be good to go!

## Installing peripherals

### Brew

```sh
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
$ brew bundle
```

### Brew version of `zsh`

Add `$(brew --prefix)/bin/zsh` (the result of running that expression, not the expression itself) to `/etc/shells`. Run `chsh -s $(brew --prefix)/bin/zsh`.

### Vim plugins

```sh
$ nvim -c "PlugInstall" -c "qa"
```

### Rust

```sh
$ curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path -y
$ rustup toolchain add nightly
$ rustup component add rust-src rustfmt rust-analysis rls
$ rustup component add rust-src rustfmt rust-analysis rls --toolchain nightly
```

#### Rust-Analyzer language server (for editors)

```sh
$ git clone git@github.com:rust-analyzer/rust-analyzer
$ cd rust-analyzer
$ cargo xtask install
```
