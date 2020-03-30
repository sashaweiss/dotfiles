# sasha's .files

My personal dotfiles. [`zsh`](https://www.zsh.org)+[`neovim`](https://neovim.io)+[`tmux`](https://github.com/tmux/tmux)+[`VSCode`](https://github.com/microsoft/vscode).

In active use on Mac and the [WSL](https://docs.microsoft.com/en-us/windows/wsl/faq).

## Download and install

Clone the repo:

```sh
$ git clone git@github.com:sashaweiss/dotfiles $HOME/.files
```

**To install to somewhere other than $HOME/.files, make sure to adjust `$DOTFILES`!**

Link the appropriate files:

```sh
export DOTFILES="$HOME/.files"
./link
```

...and you should be good to go! (Kinda - read on for installing peripherals - without those, some stuff won't work/will look funky/will be unavailable.)

## Installing peripherals

## Fonts

I personally use [Cascadia Code](https://github.com/microsoft/cascadia-code) and/or [Fira Code](https://github.com/tonsky/FiraCode), patched for Powerline by [nerd-fonts](https://github.com/ryanoasis/nerd-fonts).

Go to the `nerd-fonts` repo, find the relevant font, and download and install the `.tff`.

### Linux (incl. WSL) "not-built-in"s

```sh
$ ./bin/install/setup_linux
```

### Brew

```sh
$ ./bin/install/setup_brew
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

