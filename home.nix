{ config, pkgs, ... }:

{
  home.username = "root";
  home.homeDirectory = "/root";
  home.stateVersion = "23.11";
  targets.genericLinux.enable = true;

  home.packages = [
    pkgs.htop
    pkgs.rustup
    pkgs.python3
    pkgs.nodejs-18_x
  ];

  programs.home-manager.enable = true;
  programs.fzf.enable = true;
  programs.bat.enable = true;
  programs.neovim = {
    enable = true;
    vimAlias = true;
  };

  home.file = {
    ".aliases".source = ./dotfiles/aliases;
    ".bashrc".source = ./dotfiles/bashrc;
    ".devenvrc".source = ./dotfiles/devenvrc;
    ".fzf.bash".source = ./dotfiles/fzf.bash;
    ".gitconfig".source = ./dotfiles/gitconfig;
    ".inputrc".source = ./dotfiles/inputrc;
    ".profile".source = ./dotfiles/profile;
    ".prompt".source = ./dotfiles/prompt;
    ".tmux.conf".source = ./dotfiles/tmux.conf;
    ".wsl".source = ./dotfiles/wsl;

    ".functions" = {
      source = ./functions;
      recursive = true;
    };
  };
}
