{ config, pkgs, lib, ... }:

let
  unstable = import <unstable> {};
in
{
  home.activation.dirs = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p ~/development/
  '';

  home.activation.neovim-config = lib.hm.dag.entryAfter ["installPackages"] ''
    if [ ! -d ~/.config/nvim/ ]; then
      PATH="${config.home.path}/bin:$PATH" $DRY_RUN_CMD git clone https://github.com/bschulzebaek/nvim ~/.config/nvim
    fi
  '';

  home.activation.tmux-plugin-manager = lib.hm.dag.entryAfter ["installPackages"] ''
    if [ ! -d ~/.tmux/plugins/tpm/ ]; then
      PATH="${config.home.path}/bin:$PATH" $DRY_RUN_CMD git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm
    fi
  '';
}
