# sasha's .files
My personal dotfiles. A `zsh`+`vim`+`tmux` workflow, mostly.

Thanks to [holman's dotfiles](https://github.com/holman/dotfiles), [.tmux](https://github.com/olivierverdier/zsh-git-prompt), and [zsh-git-prompt](https://github.com/gpakosz/.tmux)!

## Download and install
These dotfiles will assume that they live at `~/dotfiles` - changing this will require adjusting the `$DOTFILES` environment variable set in the first line of `zsh/zshrc.symlink`.

On Linux, run `./install/on_linux` for a complete, automatic install process (asks for sudo once at the beginning). Tested on Ubuntu 16.04, running with `bash`. (Currently does not install `rust`.)

Alternatively (either Linux or Mac), run install scripts individually, as listed below. This can be a more tailored approach (I like my setup, doesn't mean you do), and can help diagnose a failing script-install.

Installation on Mac assumes `git` (and therefore the Xcode command-line tools) is installed.

Manual installation on Linux will require installing `zsh`, `git`, and `curl` if they're not already.

### oh-my-zsh and linking
```sh
git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh
./install/link
```

### Change shell to `zsh`
```
chsh -s /bin/zsh # Mac
```
Now, restart your terminal.

### P0 tools
- brew (needed for the rest)
- git
- vim
- tmux
```sh
./brew/install.sh && source ~/.zshrc
./git/install.sh && source ~/.zshrc
./vim/install.sh && source ~/.zshrc
./tmux/install.sh && source ~/.zshrc
```

### Languages
- python
- node and typescript
- go
- rust
```sh
./python/install.sh && source ~/.zshrc
./go/install.sh && source ~/.zshrc
./node/install.sh && source ~/.zshrc
./rust/install.sh && source ~/.zshrc # this step is not automatic yet
```

#### (Optional) Languages with complicated online instructions
- scala
- java

### CLI utilities
- ripgrep
- fd
- fzf
- wget
- tree
```sh
brew install fzf wget tree fd ripgrep && source ~/.zshrc
```

### Vim plugins
```sh
vim +PlugInstall +qa
vim +GoInstallBinaries +qa
```

### (Optional) GUI utilities
- [iTerm](https://iterm2.com/) - set up to source from $DOTFILES/iterm
- [Powerline fonts](https://github.com/powerline/fonts)
