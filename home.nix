{ config, pkgs, ... }:

let
  unstable = import <unstable> {};
in
{
  home.username = "baek";
  home.homeDirectory = "/home/baek";
  targets.genericLinux.enable = true;

  imports = [
    ./common/common.nix
  ];
}
