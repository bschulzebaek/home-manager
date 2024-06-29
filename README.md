# Home-Manager Configuration

WIP / Trying out nix & home-manager

## Getting Started

### General
1. Install [nix / nixOS](https://nixos.org/download/)
2. Install [home-manager](https://nix-community.github.io/home-manager/index.xhtml#ch-installation)

### Linux
1. Clone this repository to `~/.config/home-manager`
2. Run `home-manager switch` to apply the config

### MacOS
1. Install [nix-darwin](https://github.com/LnL7/nix-darwin)
2. Clone this repository to `~/.nixpkgs`
3. Run `darwin-rebuild switch` to apply the config

## Additional steps for setting up a new machine

1. Install a [NerdFont](https://github.com/ryanoasis/nerd-fonts)
2. Clone [neovim config](https://github.com/bschulzebaek/nvim) to `~/.config/`
    * Run `nvim` once to install plugins
3. Clone [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) to `~/.tmux/plugins/`
    1. Run `tmux`
    2. Hit `<C-b>I` to install plugins
