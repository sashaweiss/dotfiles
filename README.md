# sasha's .files
My personal dotfiles. A `zsh`+`vim`+`tmux` workflow, mostly.

Thanks to [holman's dotfiles](https://github.com/holman/dotfiles), [.tmux](https://github.com/olivierverdier/zsh-git-prompt), and [zsh-git-prompt](https://github.com/gpakosz/.tmux)!

## Download and install
These dotfiles will assume that they live at `~/dotfiles` - changing this will require adjusting the `$DOTFILES` environment variable set in the first line of `zsh/zshrc.symlink`.

Installation on Mac assumes `git` (and therefore the Xcode command-line tools) is installed.

Manual installation on Linux will require installing `zsh`, `git`, and `curl` if they're not already.

### Linking
```sh
./install/link
```

### Install my toys

Install brew:
```
$ ./brew/install.sh
```

Let brew install everything:
```
$ brew bundle
```

### Start using `zsh`
Add `/usr/local/bin/zsh` to `/etc/shells`. Run `chsh -s /usr/local/bin/zsh`.

### Individual language support
Run `./<language>/install.sh` for individual language support.

#### Vim plugins
```sh
vim +PlugInstall +qa
vim +GoInstallBinaries +qa
```
