# Home-Manager Configuration

WIP / Trying out nix & home-manager

## Getting Started

### General
1. Install [nix / nixOS](https://nixos.org/download/)
2. Install [home-manager](https://nix-community.github.io/home-manager/index.xhtml#ch-installation)

### nix-channel
The following nix-channel are required (see `nix-channel --list`)

|Name|Channel|
|---|---|
| home-manager | https://github.com/nix-community/home-manager/archive/master.tar.gz |
| unstable | https://nixos.org/channels/nixpkgs-unstable |

If the NIX_PATH variable isn't set properly after updating channels:

```
export NIX_PATH=home-manager=/home/baek/.nix-defexpr/channels/home-manager:unstable=/home/baek/.nix-defexpr/channels/unstable
```

### Linux
1. Clone this repository to `~/.config/home-manager`
2. Run `home-manager switch` to apply the config

### MacOS
1. Install [nix-darwin](https://github.com/LnL7/nix-darwin)
2. Clone this repository to `~/.nixpkgs`
3. Run `darwin-rebuild switch` to apply the config

## Additional steps for setting up a new machine
1. Enable the nerdfont "JetBrains Mono" for your terminal. "JetBrains Mono" is installed automatically via home-manager. Any nerdfont is required for some UI symbols both in NeoVim and Tmux.
2. To install NeoVim plugins, run it once
3. To install Tmux plugins, run `tmux` and press `<C-b>` + `I` (capital i)
