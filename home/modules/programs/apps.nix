{ pkgs, ... }:

{
  home.packages = with pkgs; [
    google-chrome
    nautilus
    discord
    bitwarden-desktop
  ];
}
