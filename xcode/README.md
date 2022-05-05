# Xcode-specific

I use Xcode with the Vim-like editor keybindings (as of Xcode 13), along with a
set of key customizations to emulate certain Vim-like behaviors. While Xcode
does store keybindings in a file I can sync, it unfortunately does not respect
symlinks (and will overwrite the symlink with a regular file whenver I change
the bindings via the GUI).

So, I am instead syncing the keybindings using the script here. I have also
`init`-ed a git repo in the dir that Xcode uses for the bindings, to help track
what changes I've made (and if I need to sync them to here!).

## Selected key (heh) bindings

To see the ones I've customized, open the "Key Bindings" settings pane in Xcode
and use the "Customized" tab.

Defaults I like:

-   Open new editor (`:vsp`): `Cmd+Ctrl+T`
-   Jump to definition (`gd`): `Cmd+Ctrl+J`
-   Toggle left bar: `Cmd+0`
-   Open a left bar pane: `Cmd+1-9`
-   Toggle right bar: `Cmd+Opt+0`
-   Toggle console/bottom bar: `Cmd+Shift+Y`
