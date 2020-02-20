## Windows-specific configuration

### AutoHotKey

Install AutoHotKey, and run `bin/link`. This should put a shortcut to the `.ahk` script in the startup folder. If the startup folder differs from  what's in the script, find it via `Win+R` -> `shell:startup`.

### SharpKeys

Open `remappings.skl` in the SharpKeys application and hit "write to registry" to very permanently write the key remappings listed there to the registry. I've found this to be the most reliable way to make sure said remappings are in effect immediately on sign-in, as well as transitive (useful for other shortcuts).
