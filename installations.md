# To install

## Install package managers

### oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

### VimPlug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

### Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Install recommended packages

### Brew
- vim
- thefuck
- tree
- wget
- fzf (remember to run /usr/local/opt/fzf/install)
- ripgrep

### npm
- typescript

### pip
- virtualenv

### misc
- [powerline fonts](https://github.com/powerline/fonts)

## Symlink dotfiles
```sh
$ cd
$ git clone git@github.com:sashaweiss/dotfiles
$ ln -s ~/dotfiles/zprofile .zprofile
$ ln -s ~/dotfiles/zshrc .zshrc
$ ln -s ~/dotfiles/vimrc .vimrc
$ ln -s ~/dotfiles/ideavimrc .ideavimrc
$ ln -s ~/dotfiles/gitconfig .gitconfig
$ ln -s ~/dotfiles/gitignore .gitignore
$ ln -s ~/dotfiles/etc/oh-my-tmux/oh-my-tmux.conf .tmux.conf
$ ln -s ~/dotfiles/etc/oh-my-tmux/oh-my-tmux.conf.local .tmux.conf.local
```

Note that [gitconfig](./gitconfig) has my git info in it - won't be helpful for anyone reading this!

### Machine specific config
Under `$HOME/dotfiles/machines/"$(hostname)"/`, add the files `alias` and `env_vars` with any machine-specific aliases and environment variables!

## Vim plugins
The first time you open `vim`, enter the command `:PlugInstall` - that'll install all the plugins listed in [vimrc](./vimrc).

For the `vim-go` plugin, make sure to run `:GoInstallBinaries` on first install.

For `YouCompleteMe`, see their [installation instructions](https://github.com/Valloric/YouCompleteMe#full-installation-guide).

