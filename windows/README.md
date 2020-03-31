# Windows-specific

## AutoHotKey

AutoHotKey is an application that exports a scripting language, and can run scripts that can modify Windows system behavior or perform various tasks. Scripts can be set to run on startup - e.g., for mapping key combinations. (For single-key remaps, see [below](#SharpKeys)).

Running `bin/link` during dotfiles install will put a shortcut to my on-startup `.ahk` script(s) in the startup folder. If the startup folder differs from what's in the script, find it via `Win+R` -> `shell:startup`.

## SharpKeys

SharpKeys allows one to very permanently write a set of key remappings to the registry. Which keys should be mapped to which depends a little on your keyboard, and what it's default configuration is - I will always map `CapsLock` to `Esc`, and then depending on the modifier key layout will often map `LeftAlt` to `Win` and vice versa.

## The [WSL](https://docs.microsoft.com/en-us/windows/wsl/faq)

The WSL is a Linux kernel bolted onto the side of (and more and more integrated with!) Windows 10, that allows one to install a Linux distro and use it to manage the Windows FS.

It's a work in progress, and there are obviously some shortcomings/missing pieces:
- WSL performance in interacting with files in the Windows filesystem (under `/mnt/c`) is pretty poor - for things like `npm install` it's best to invoke `cmd.exe` or `powershell.exe` and use those temporarily.
- Making symlinks between the WSL and Windows FSs is...not really feasible. I use `bin/wsl/mklink_wsl_to_windows` to make unidirectional symlinks into the Windows FS.

Not WSL's fault, but Ubuntu ships without a bunch of key utils. Run `bin/wsl/install_linux_deps` to get those.

## [Windows Terminal](https://github.com/microsoft/terminal)

The Windows Terminal allows one to have all the various Windows command lines (WSL, Cmd.exe, Powershell, etc.) as tabs in one application. Installs via the Microsoft Store.

Its settings live in this repo. To update the colorscheme, I used [`ColorTool`](https://github.com/Microsoft/Terminal/tree/master/src/tools/ColorTool). `ColorTool.exe -t <colorscheme>.itermcolors` outputs a JSON that can be added to the settings file, allowing me to keep my iTerm and Windows Terminal color schemes (more or less) in sync. (Note: at the time of writing, the `-t` switch was not released, so I built `ColorTool` from source via the `.sln` in the linked directory. Sigh.)
