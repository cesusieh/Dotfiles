{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./Modules
    ];

  system.stateVersion = "25.11";
}