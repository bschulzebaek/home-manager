{ config, pkgs, lib, ... }:

let
  unstable = import <unstable> {};
in
{
  home.activation.dirs = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p ~/development/
  '';
}
