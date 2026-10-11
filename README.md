# sasha's .files

My personal dotfiles. Mostly [`zsh`](https://www.zsh.org),
[`neovim`](https://neovim.io), [`tmux`](https://github.com/tmux/tmux).

## How-to for fresh installation

Live notes on my installation process for a fresh, clean machine.

1. Choose a machine name.

```
; sudo scutil --set ComputerName "Machine Name"
; sudo scutil --set LocalHostName "Machine-Name" # doesn't allow spaces
; sudo scutil --set HostName "Machine Name"
```

1. Sign into iCloud.

1. Make macOS install the developer tools by running `git`.

1. Install password manager, preferred browser, preferred terminal.

1. Clone these dotfiles.

```
; export DOTFILES="$HOME/.files"
; git clone git@github.com:sashaweiss/dotfiles $DOTFILES
; cd $DOTFILES
; ./bin/link
```

1. Install `brew` via instructions on their [homepage](https://brew.sh). Install brew-managed tools.

```
; export DOTFILES="$HOME/.files"
; cd $DOTFILES/util
; brew bundle
```

1. Install dotfiles-managed settings.

```
; export DOTFILES="$HOME/.files"
; cd $DOTFILES
; ./bin/link
; ./macos/import-plist-settings.zsh <plist-settings>
```

1. Clone [`natasha-codes/fonts`](https://github.com/natasha-codes/fonts) using `git-lfs`. Install the `Natasha II` font.

## macOS System Settings

-   Map CapsLock to Esc in "System Preferences -> Keyboard -> Modifier Keys"
-   Automatically hide and show menu bar in "System Preferences -> Dock and Menu Bar"
-   Set default browser in "System Preferences -> General"
-   Move Spotlight shortcut to Alt+Space in "System Preferences -> Keyboard -> Shortcuts -> Spotlight" (to avoid a conflict with ueli).
-   Set open-at-login items in "System Preferences -> Users and Groups -> Login Items"
-   Unblock key-repeat: `defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false`

## App settings

### Firefox

`about:config` -> `browser.tabs.closeWindowWithLastTab = false`

### Vim plugins

These should auto-install upon opening `nvim`. If not:

1. Install [vim-plug](https://github.com/junegunn/vim-plug?tab=readme-ov-file#installation).
2. `nvim -c "PlugInstall" -c "qa"
