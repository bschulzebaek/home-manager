{ config, pkgs, lib, ... }:

let
  unstable = import <unstable> {};
in
{
  home.username = "baek";
  home.homeDirectory = "/home/baek";
  targets.genericLinux.enable = true;

  imports = [
    ./common/common.nix
    ./common/activation.nix
  ];

  programs.git.extraConfig.user.email = lib.mkForce "b.schulze-baek@shopware.com";
}
