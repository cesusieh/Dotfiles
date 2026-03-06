{ ... }:

{
  imports = [
    ./hardware-configuration.nix

    ./modules/core.nix
    ./modules/desktop.nix
    ./modules/hardware.nix
    ./modules/programs.nix
  ];

  system.stateVersion = "25.11";
}
