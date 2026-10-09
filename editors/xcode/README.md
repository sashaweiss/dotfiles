# Xcode-specific

## "Reformatting Guide"

In Xcode 26, the option to show the "reformatting guide", or a vertical bar in the editor at a certain width for alignment purposes, vanished. (I'm also unable to get it to appear using a `.editorconfig` file.) However, a direct write of the defaults below made it appear.

I'm assuming this is an Xcode regression, and I've submitted a Feedback (`FB22224860`).

```sh
defaults write com.apple.dt.Xcode DVTTextShowPageGuide -bool YES
defaults write com.apple.dt.Xcode DVTTextPageGuideLocation -int 80
```

## `sync-xcode-configs`

This directory backs up Xcode configuration files, using the `sync-xcode-configs` script to copy them to/from the appropriate Xcode directories. (Manual copying is required since Xcode clobbers symlinks rather than writing to the pointed-to file whenever updates are made to the config via the GUI.)

## Acknowledgements

Many thanks to https://github.com/dmcrodrigues/Oceanic-Next-Xcode-Theme for providing the foundation for my Xcode editor theme!
