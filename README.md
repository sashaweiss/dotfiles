# Sasha's dotfiles

.files for bash, vim, and ssh host configuration.

To install, clone this repo down. Then, in your ~ directory, run `ln -s dotfiles/<dotfile> .<dotfile>` to link to each of the cloned dotfiles. To reload bash configs, run `source <dotfile>`, or close and reopen your terminal.

For the ssh host configuration, replace the hosts and netID with yours - it's largely a template.

The bash prompt as it is in bashrc uses git-prompt, git-completion, and a slight mod of sexy-bash-prompt, which I sourced in ~/etc. For the prompt to work, download the [git-prompt][git-prompt], [git-completion][git-completion], and [sexy-bash-prompt][sexy-bash-prompt] scripts and connect it to bashrc.

[git-completion]: https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
[git-prompt]: https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
[sexy-bash-prompt]: https://github.com/twolfson/sexy-bash-prompt/tree/0.26.7
