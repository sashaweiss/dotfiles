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

### Fonts

I am currently using a [custom build](https://github.com/natasha-codes/fonts) of
[Iosevka](https://github.com/be5invis/Iosevka) as my default font for coding,
specifically `Natasha II`.

### Vim plugins

What's `(n)vim` without plugins?

```sh
; nvim -c "PlugInstall" -c "qa"
```
