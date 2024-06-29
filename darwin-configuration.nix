{ config, pkgs, ... }:

{
  imports = [
    <home-manager/nix-darwin>
  ];

  users.users.baek = {
    name = "baek";
    home = "/Users/baek";
  };

  home-manager.users.baek = {

    imports = [
      ./common/common.nix
    ];
  };

  services.nix-daemon.enable = true;
  programs.bash.enable = true;

  system.stateVersion = 4;
}
