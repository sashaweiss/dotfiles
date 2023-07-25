#! /usr/bin/env zsh

# Ordering matters here, since some functions rely on others.

source "$DOTFILES/zsh/functions/copy.zsh"
source "$DOTFILES/zsh/functions/fd-copy.zsh"
source "$DOTFILES/zsh/functions/is_linux.zsh"
source "$DOTFILES/zsh/functions/is_mac.zsh"
source "$DOTFILES/zsh/functions/is_wsl.zsh"
source "$DOTFILES/zsh/functions/manage_proxy.zsh"
source "$DOTFILES/zsh/functions/spectrum_ls.zsh"

source "$DOTFILES/zsh/functions/git/e_git.zsh"
source "$DOTFILES/zsh/functions/git/is_in_git_repo.zsh"
source "$DOTFILES/zsh/functions/git/nuke_branch.zsh"

source "$DOTFILES/zsh/functions/fzf/fzf_gc.zsh"
source "$DOTFILES/zsh/functions/fzf/fzf_gr.zsh"

source "$DOTFILES/zsh/functions/ios_sim/ios_sim_boot.zsh"
source "$DOTFILES/zsh/functions/ios_sim/ios_sim_get_uuid.zsh"
source "$DOTFILES/zsh/functions/ios_sim/ios_sim_go_to_dir.zsh"

source "$DOTFILES/zsh/functions/signal/launch_signal_on_sim.zsh"
