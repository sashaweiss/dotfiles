#! /usr/bin/env zsh

# Ordering matters here, since some functions rely on others.

source "$DOTFILES/zsh/functions/is_mac.zsh"
source "$DOTFILES/zsh/functions/is_in_git_repo.zsh"

source "$DOTFILES/zsh/functions/cd-git-worktree.zsh"
source "$DOTFILES/zsh/functions/copy.zsh"
source "$DOTFILES/zsh/functions/fd-copy.zsh"
source "$DOTFILES/zsh/functions/manage_proxy.zsh"
source "$DOTFILES/zsh/functions/mov-to-mp4.zsh"

source "$DOTFILES/zsh/functions/fzf/fzf_gc.zsh"
source "$DOTFILES/zsh/functions/fzf/fzf_gr.zsh"

fpath=($fpath "$DOTFILES/zsh/functions/completions")
