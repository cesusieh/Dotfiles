{ config, pkgs, ... }:

{
  networking.hostName = "Robson";
  networking.networkmanager.enable = true;
  
  # networking.firewall.allowedTCPPorts = [ ... ];
}