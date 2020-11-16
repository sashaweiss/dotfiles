# Nix

See: [https://nixos.org](https://nixos.org)

## Installing Nix

Run:

```sh
$ sh <(curl -L https://nixos.org/nix/install) --darwin-use-unencrypted-nix-store-volume --daemon
```

for a multi-user installation that works on macOS Catalina. If on a non-Mac system, can ignore
the `--darwin-use-unencrypted-nix-store-volume`.

On WSL multi-user installation doesn't seem to work (slash, doesn't make a lot of sense?) so ignore
the `--daemon` as well.

## Installing packages via Nix

To install a package, run:

```sh
$ nix-env -iA nixpkgs.<package-name>
```

To install my "set of packages" (via `./config.nix`), run:

```sh
$ nix-env -iA nixpkgs.sashaPackages
```

Note that these rely on the "unstable" nixpkgs channel, which you need to add first:

```sh
$ nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs-unstable
$ nix-channel --update
```
