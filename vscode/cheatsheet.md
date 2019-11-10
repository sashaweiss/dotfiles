# My personal VSCode setup cheatsheet

Because every time I come back to this I have to figure it all out...again.

## Philosophy

Make the navigation experience as similar to Vim as possible. Replicate/analogize shortcuts as intuitively as possible.

## Editor/Spaces navigation

### Text in editor
- See `settings.json`, the `vim.*` sections, for keybindings. Same as regular .vimrc as much as possible.

### Tabs
- `<leader>+/-` or `ctrl[+shift]+tab` to switch tabs.
- `<leader>w` or `cmd+w` to close tabs. Will not close window if no tabs open.

### Spaces

#### Explorers/Terminal
- `cmd+shift+e` to focus/toggle file explorer.
- `cmd+shift+f` to focus/toggle search explorer.
- `cmd+shift+z` to focus/toggle integrated terminal.
- `cmd+shift+j` to focus editors.
- `cmd+shift+m` to focus "Problems" viewer (handy if linter/lang-server running).
- `ctrl+w+[hl]` to move between editor and sidebar. Note: if in list in an explorer and focused on an expandable node, `ctrl+w+l` will expand the node rather than change focus. To fix this would mean `l` does not expand nodes, which would be a bummer, so leaving this bug in.

#### Lists within an explorer
- `jk` or `ctrl+[np]` to navigate tree.
- `[ctrl+]o` to open/expand/collapse a tree node.
