# sasha's .files

My personal dotfiles. `zsh`+`neovim`+`tmux`+`Visual Studio Code`.

Supported on Mac and WSL - mostly. Probably.

## Download and install

Clone the repo:

```sh
$ git clone git@github.com:sashaweiss/dotfiles $HOME/.files && cd .files
$ git submodule update --init
```

**To install to somewhere other than $HOME/.files, make sure to adjust the $DOTFILES environment variable!**

Link the appropriate files:

```sh
export DOTFILES="$HOME/.files"
./link
```

...and you should be good to go!

*Note*: when installing for the WSL, because of file-system interop issues and linking, the VSCode configs + VSVimrc do not link automatically. Use `bin/wsl/sync_vs[code|vimrc]` to keep them in sync manually, whenever they change.

## Installing peripherals

**Please run all `bin` scripts from the top level of this repo. Relatives paths are not my thing.**

## Fonts

I personally use [Cascadia Code](https://github.com/microsoft/cascadia-code) and/or [Fira Code](https://github.com/tonsky/FiraCode), patched for Powerline by [nerd-fonts](https://github.com/ryanoasis/nerd-fonts).

Go to the `nerd-fonts` repo, find the relevant font, and download and install the `.tff`.

### If on Linux (incl. WSL)

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

#### Rust-Analyzer language server (for editors)

Note: I personally go back and forth between using this and `RLS`, from the Rust team.

```sh
$ git clone git@github.com:rust-analyzer/rust-analyzer
$ cd rust-analyzer
$ cargo xtask install
```
