# MacOS-specific

I use a small menagerie of utility applications when working in MacOS. Some require licenses, and some require manual setup, so I find it clearest to list them below and install them manually.

## [ueli](https://github.com/oliverschwendener/ueli)

ueli is a keystroke launcher for MacOS - i.e., a beefed up Spotlight. Still new to using it, so will follow up when I've got more to say about it.

## [AltTab](https://github.com/lwouis/alt-tab-macos)

AltTab is a window switcher for MacOS, giving a similar experience to the Windows Alt-Tab experience. Still new to using it, so will follow up when I've got more to say about it.

## [iTerm](https://iterm2.com)

iTerm is my preferred terminal emulator. It's pretty and performant, with a ton of bells and whistles (that I mostly don't use).

Tips and tricks:
- iTerm allows one to store its preferences, which I keep in this repo. Under "iTerm Settings -> General -> Preferences", can specify the directory in which they are found.
- iTerm color schemes can be specified in `.itermcolors` files, which can then be imported into iTerm via "iTerm settings -> Profiles -> Colors -> Color presets". I keep my preferred ones around adjacent to the settings file, because some other emulators can use `.itermcolors` files as well (e.g., Windows Terminal).
- Worth setting to open on login.

## [Bartender](https://www.macbartender.com)

Bartender helps keep your Mac menu bar (top bar) clean and organized, when otherwise it can end up overrun with icons for apps one isn't very interested in.

Tips and tricks:
- Bartender is a paid app, for which I bought a license.
- An icon has to be in the menu bar in order for Bartender to know about it, and optionally for it to hide it.
- Worth setting to open on login.

## [Rectangle](https://www.rectangleapp.com)

Rectangle is an (open-source!) app that adds hotkeys for quickly resizing windows to halves, thirds, or corners of the screen. Based on [Spectacle](https://spectacleapp.com), which I used and loved for many years.

Tips and tricks:
- I tend towards using the defaults here, which can be hard to remember but are some combination of `Alt`, `Ctrl`, `Shift`, and an arrow key. I usually blunder around until I find the one I want.
- In Rectangle preferences, selecting "Allow any keyboard shortcut" allows overriding of stuff like `Cmd+Ctrl+F`, which is normally a system shortcut.
- Worth setting to open on login.

## [DaisyDisk](https://daisydiskapp.com)

DaisyDisk is an adorable app (paid, through the App Store) that visualizes occupied disk space on your Mac and helps clear it out. I use it especially since all my Mac machines have woefully small SSDs.

## [Amphetamine](https://apps.apple.com/us/app/amphetamine/id937984704)

Amphetamine keeps your computer awake, even if the screen goes dark, for a period of time you specify. Handy for when performing a long download, and wanting to make sure it completes overnight.

## Utilities I have since replaced

### [Alfred](https://www.alfredapp.com)

Replaced by `ueli`, see above.

Alfred is a search/shortcut utility that takes the place of stock Spotlight, augmenting it's search feature with handy shortcuts like "sleep", "lock", and "clipboard history".

Tips and tricks:
- Alfred conveniently allows one to specify where to store its preferences, which I keep in this repo. Under "Alfred Preferences -> Advanced", can browse for the directory to save them in. If `$DOTFILES` is not navigable (e.g., is in `~/.files`), can execute `open ~/.files` and Finder will open to that location. Can then drag-and-drop from the Finder window to the Alfred explorer to get to this repo.
- Alfred has a *ton* of preferences files. I `.gitignore` some of them that I don't find useful.
- Worth setting to open on login.

### [Contexts](https://contexts.co)

Replaced by `AltTab`, see above.

Contexts is a window-switcher that extends MacOS's default `Cmd+Tab` functionality, allowing one to switch to a particular window of an app rather than just to the app itself.

Tips and tricks:
- Contexts, imho, tries to do way too much. I disable most of the functionality immediately, keeping really just the window switcher.

