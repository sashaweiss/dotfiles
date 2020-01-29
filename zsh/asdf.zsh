# this file initializes the `asdf` version manager
# initialization is done here so that it can be sourced in `./zshrc.symlink`
# after all other `zsh` config files have been sourced to avoid conflicts.
#
# see more details on `asdf` and my global config in `$DOTFILES/utilities/asdf`

brew_prefix=$(brew --prefix)

asdf_initialization="$brew_prefix/opt/asdf/asdf.sh"
[ -f "$asdf_initialization" ] && source "$asdf_initialization"
unset asdf_initialization

asdf_completion="$brew_prefix/opt/asdf/etc/bash_completion.d/asdf.bash"
[ -f "$asdf_completion" ] && source "$asdf_completion"
unset asdf_completion