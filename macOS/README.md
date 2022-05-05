# MacOS-specific

Notes on things I do/configure/use specifically on MacOS!

## How-to for fresh installation

Live notes on my installation process for a fresh, clean machine.

1. Choose a machine name. This is a hard one.
2. Install 1Password. Sign into iCloud.
3. Clone my dotfiles.
4. Install `brew` via instructions in on their [homepage](https://brew.sh). Run `brew bundle`.
5. While that's running, install helper apps below.
6. Once `brew` is done installing, run `DOTFILES="$HOME/.files" ./bin/link`.
   This [SO post](https://stackoverflow.com/questions/13762280/zsh-compinit-insecure-directories)
   may end up relevant.
7. Clone `natasha-codes/fonts` using `git-lfs`. Install the `Natasha II` font.
8. Open `nvim` and run `:PlugInstall`.
9. Install `asdf` via `/util/asdf/setup_asdf`. (On an M1 Mac, had to run
   `arch -x86_64 zsh` and do `asdf install` from there to install `node`,
   but Python needed to be installed from `arm64` `zsh`. _shrug_)

## Mac system settings configuration

macOS has a bunch of built-in settings I like to tweak:

-  Map CapsLock to Esc in "System Preferences -> Keyboard -> Modifier Keys"
-  Automatically hide and show menu bar in "System Preferences -> Dock and Menu Bar"
-  Set default browser in "System Preferences -> General"
-  Move Spotlight shortcut to Alt+Space in "System Preferences -> Keyboard ->
   Shortcuts -> Spotlight" (to avoid a conflict with ueli).
-  Set open-at-login items in "System Preferences -> Users and Groups -> Login
   Items", e.g. Rectangle, AltTab, ueli, Bartender
-  Unblock key-repeat:
   `defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false`
-  Prevent macOS from re-opening apps after reboot:

```sh
# Give `root` ownership over the file that stores the session, so it
# cannot be replaced. Then, prevent anyone from reading or writing it!
; sudo chown root ~/Library/Preferences/ByHost/com.apple.loginwindow*
; sudo chmod 000 ~/Library/Preferences/ByHost/com.apple.loginwindow*
```

## [Visual Studio Code](https://code.visualstudio.com)

VSCode is my preferred text editor.

Config: managed in `/vscode/[keybindings|settings].json`. See
`vscode/install_plugins` for some of my core plugins.

## [ueli](https://ueli.app/)

ueli is a keystroke launcher - i.e., a beefed up Spotlight.

Config: managed in `/macOS/ueli/config.json`.

## [AltTab](https://alt-tab-macos.netlify.app)

AltTab is an improved window switcher for macOS.

Config:

-  Settings -> Controls -> Shortcut 1 -> Set Cmd+Tab as the shortcut
-  Settings -> Appearance -> Check "Hide apps with no open window"

## [iTerm](https://iterm2.com)

iTerm is my preferred terminal emulator.

Config: managed in `/macOS/iterm/com.googlecode.iterm2.plist`. From the GUI,
"Settings -> General -> Preferences" to specify where iTerm should look for the managed preferences.

## [Bartender](https://www.macbartender.com)

Bartender manages the menu bar. (It's a paid app I have a license for.)

Config: manually set for each menu bar item.

## [Rectangle](https://www.rectangleapp.com)

Rectangle provides hotkeys for resizing windows. Based on Spectacle (RIP).

Config: "Preferences -> Remove keyboard shortcut restrictions" lets one map
Ctrl+Cmd+F to "maximize".

## [DaisyDisk](https://daisydiskapp.com)

DaisyDisk (paid, via App Store) visualizes occupied disk space.

No config necessary.

## [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704)

Amphetamine keeps your computer awake for a specified period, to ensure
long-running tasks (e.g., downloads) complete.
