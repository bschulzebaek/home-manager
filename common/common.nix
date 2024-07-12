{ config, pkgs, ... }:

let
  unstable = import <unstable> {};
in
{
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    btop
    tmux
    neofetch
    bat
    fzf
    zip
    ripgrep
    jq

    rustup
    python3
    nodejs_22
    go

    unstable.devenv

    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];

  programs.fzf.enable = true;
  programs.bat.enable = true;
  programs.direnv.enable = true;
  programs.git = {
    enable = true;
    extraConfig = {
      user.name = "Benedikt Schulze Baek";
      user.email = "benedikt@schulze-baek.de";
      commit.gpgsign = true;
      gpg.format = "ssh";
      user.signingkey = "${config.home.homeDirectory}/.ssh/id_rsa.pub";
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
    ".bash_profile".source = ./dotfiles/bash_profile;
    ".devenvrc".source = ./dotfiles/devenvrc;
    ".inputrc".source = ./dotfiles/inputrc;
    ".profile".source = ./dotfiles/profile;
    ".prompt".source = ./dotfiles/prompt;
    ".tmux.conf".source = ./dotfiles/tmux.conf;

    ".functions" = {
      source = ./functions;
      recursive = true;
    };
  };

  fonts.fontconfig.enable = true;
}
