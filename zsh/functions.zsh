#! /usr/bin/env zsh

# Ordering matters here, since some functions rely on others.

source "$DOTFILES/zsh/functions/copy.zsh"
source "$DOTFILES/zsh/functions/fd-copy.zsh"
source "$DOTFILES/zsh/functions/is_linux.zsh"
source "$DOTFILES/zsh/functions/is_mac.zsh"
source "$DOTFILES/zsh/functions/manage_proxy.zsh"
source "$DOTFILES/zsh/functions/is_in_git_repo.zsh"

source "$DOTFILES/zsh/functions/fzf/fzf_gc.zsh"
source "$DOTFILES/zsh/functions/fzf/fzf_gr.zsh"
