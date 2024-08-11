# sasha's .files

My personal dotfiles. Mostly [`zsh`](https://www.zsh.org),
[`neovim`](https://neovim.io), [`tmux`](https://github.com/tmux/tmux),
and [`VSCode`](https://github.com/microsoft/vscode).

## Download and install

Clone the repo:

```sh
; git clone git@github.com:sashaweiss/dotfiles $HOME/.files
```

**To install to somewhere other than $HOME/.files, make sure to adjust `$DOTFILES`!**

Link the appropriate files:

```sh
export DOTFILES="$HOME/.files"
./bin/link
```

...and you should be good to go! (Kinda - read on for installing peripherals - without those,
some stuff won't work/will look funky/will be unavailable.)

## Installing peripherals

### [asdf](https://github.com/asdf-vm/asdf)

I use `asdf` as a version manager for `node`, `python`, and `ruby`.

```sh
; ./util/asdf/setup_asdf
```

### Vim plugins

What's `(n)vim` without plugins?

```sh
; nvim -c "PlugInstall" -c "qa"
```
