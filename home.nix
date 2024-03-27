{ config, pkgs, ... }:

let 
  unstable = import <nixos-unstable> {};
in
{
  home.username = "baek";
  home.homeDirectory = "/home/baek";
  home.stateVersion = "23.11";
  targets.genericLinux.enable = true;
  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    btop
    tmux
    neofetch
    bat
    fzf
    zip
    lazygit
    ripgrep

    rustup
    python3
    nodejs-18_x
    go

    spotify
    google-chrome

    unstable.devenv
  ];

  programs.fzf.enable = true;
  programs.bat.enable = true;
  programs.direnv.enable = true;
  programs.git = {
    enable = true;
    extraConfig = {
      user.name = "Benedikt Schulze Baek";
      user.email = "b.schulze-baek@shopware.com";
      core.autocrlf = false;
      core.fileMode = false;
      core.editor = "vim";
      init.defaultBranch = "master";
      safe.directory = "*";
    };
  };
  programs.neovim = {
    enable = true;
    vimAlias = true;
  };

  home.file = {
    ".aliases".source = ./dotfiles/aliases;
    ".bashrc".source = ./dotfiles/bashrc;
    ".devenvrc".source = ./dotfiles/devenvrc;
    ".fzf.bash".source = ./dotfiles/fzf.bash;
    ".inputrc".source = ./dotfiles/inputrc;
    ".profile".source = ./dotfiles/profile;
    ".prompt".source = ./dotfiles/prompt;
    ".tmux.conf".source = ./dotfiles/tmux.conf;

    ".functions" = {
      source = ./functions;
      recursive = true;
    };
  };
}
