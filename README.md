# Sasha's dotfiles

.files for bash, vim, and ssh host configuration.

To install, clone this repo down. Then, in your ~ directory, run `ln -s dotfiles/<dotfile> .<dotfile>` to link to each of the cloned dotfiles. To reload bash configs, run `source <dotfile>`, or close and reopen your terminal.

For the ssh host configuration, replace the hosts and netID with yours - it's largely a template.

The bash prompt as it is in bashrc uses git-prompt, which I sourced in ~/etc. For the prompt to work, download the git-prompt script and connect it to bashrc.
