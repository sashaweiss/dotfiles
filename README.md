# sasha's .files

My personal dotfiles. Mostly [`zsh`](https://www.zsh.org),
[`neovim`](https://neovim.io), [`tmux`](https://github.com/tmux/tmux),
and [`VSCode`](https://github.com/microsoft/vscode).

In active use on Mac and (to a lesser extent) the
[WSL](https://docs.microsoft.com/en-us/windows/wsl/faq).

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

...and you should be good to go! (Kinda - read on for installing peripherals - without those,
some stuff won't work/will look funky/will be unavailable.)

## Installing peripherals

### Fonts

I am currently using a [custom build](https://github.com/natasha-codes/fonts) of
[Iosevka](https://github.com/be5invis/Iosevka) as my default font for coding.

### Per-platform

See my [Windows](./windows/README.md) and [Mac](./macOS/README.md) for platform-specific
configs/applications/utilities.

### [Homebrew](https://brew.sh)

I install the majority of my utilities via `brew`.

```sh
$ ./util/brew/setup_brew
```

#### To make `brew`'s `zsh` the default shell:

Add `$(brew --prefix)/bin/zsh` (the result of running that expression, not the expression
itself) to `/etc/shells`. Run `chsh -s $(brew --prefix)/bin/zsh`.

### [asdf](https://github.com/asdf-vm/asdf)

I use `asdf` as my version manager for `node`, `python`, and maybe eventually for `rustc`.

```sh
$ ./util/asdf/setup_asdf
```

### Vim plugins

What's `(n)vim` without plugins?

```sh
$ nvim -c "PlugInstall" -c "qa"
```

### Rust

My favorite programming language <3 (maybe - MAYBE - except for Swift)

```sh
$ curl https://sh.rustup.rs -sSf | sh -s -- --no-modify-path -y
$ rustup toolchain add nightly
$ rustup component add rust-src rustfmt rust-analysis rls
$ rustup component add rust-src rustfmt rust-analysis rls --toolchain nightly
```
