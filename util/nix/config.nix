{
  packageOverrides = pkgs: with pkgs; {
    sashaPackages = pkgs.buildEnv {
      name = "sasha-packages";
      paths = [
        # Utilities
        bat
        exa
        fd
        fzf
        git
        git-lfs
        gitAndTools.delta
        hyperfine
        neovim
        ripgrep
        rsync
        shellcheck
        tmux
        tree
        vim
        zsh

        # Languages
        python3
        python38Packages.pip
        ruby_2_7
        nodejs-14_x
        yarn
      ];
    };
  };
}
