# Windows-specific

## AutoHotKey

AutoHotKey is an application that exports a scripting language, and can run scripts that can modify Windows system behavior or perform various tasks. Scripts can be set to run on startup - e.g., for mapping key combinations. (For single-key remaps, see [below](#SharpKeys)).

Running `bin/link` during dotfiles install will put a shortcut to my on-startup `.ahk` script(s) in the startup folder. If the startup folder differs from what's in the script, find it via `Win+R` -> `shell:startup`.

## SharpKeys

SharpKeys allows one to very permanently write a set of key remappings to the registry. Which keys should be mapped to which depends a little on your keyboard, and what it's default configuration is - I will always map `CapsLock` to `Esc`, and then depending on the modifier key layout will often map `LeftAlt` to `Win` and vice versa.
