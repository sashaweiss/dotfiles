## Windows-specific configuration

### AutoHotKey

To run AutoHotKey (`.ahk`) scripts on startup, run `Win+R` -> `shell:startup` to open the shell startup directory, and copy the script there.

This functionality should be covered in `bin/wsl/sync_ahk`.

### SharpKeys

Open `remappings.skl` in the SharpKeys application and hit "write to registry" to very permanently write the key remappings listed there to the registry. I've found this to be the most reliable way to make sure said remappings are in effect immediately on sign-in, as well as transitive (useful for other shortcuts).
