# MacOS-specific

Notes on things I do/configure/use specifically on MacOS.

## [ueli](https://github.com/oliverschwendener/ueli)

ueli is a keystroke launcher - i.e., a beefed up Spotlight. Still new to using it, so will follow up when I've got more to say about it.

## [AltTab](https://github.com/lwouis/alt-tab-macos)

AltTab is a window switcher for MacOS, giving a similar experience to the Windows Alt-Tab experience. Still new to using it, so will follow up when I've got more to say about it. Installs

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
