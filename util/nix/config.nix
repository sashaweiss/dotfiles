{
  packageOverrides = pkgs: with pkgs; {
    sashaPackages = pkgs.buildEnv {
      name = "sasha-packages";
      paths = [
        bat
        exa
        fd
        fzf
        git
        git-lfs
        gitAndTools.delta
        hyperfine
        neovim
        nodejs-14_x
        python3
        ripgrep
        rsync
        ruby_2_7
        shellcheck
        tldr
        tmux
        tree
        vim
        yarn
        zsh
      ];
    };
  };
}
