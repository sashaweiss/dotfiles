# Sasha's dotfiles

.files for bash, vim, tmux, and ssh host configuration.

To install, clone this repo down into your home. Then, still in your ~ directory, run `ln -s dotfiles/bashrc .bashrc; ln -s dotfiles/bash_profile .bash_profile` to link to the cloned dotfiles. To reload bash configs, run `source <dotfile>`, or close and reopen your terminal.

For the vim config, run `ln -s dotfiles/vimrc .vimrc`. I use VimPlug to manage plugins - at the bottom of the vimrc, there's a script to download it. Once it's installed, the command `:PlugInstall` inside vim will install the plugins.

For the tmux config, fun `ln -s dotfiles/tmux.conf .tmux.conf`. It depends (on Mac) on a Homebrew package named 'reattach-to-user-namespace' - to download, run `brew install reattach-to-user-namespace`.

For the ssh host configuration, replace the hosts and logins with yours - it's largely a template. Then, add to the ~/.ssh directory.

The bash prompt as it is in bashrc uses [git-prompt][git-prompt], [git-completion][git-completion], and a slight mod of [sexy-bash-prompt][sexy-bash-prompt], which can be found in etc/. 

[git-completion]: https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
[git-prompt]: https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
[sexy-bash-prompt]: https://github.com/twolfson/sexy-bash-prompt/tree/0.26.7
