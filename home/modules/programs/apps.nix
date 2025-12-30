{ pkgs, ... }:

{
  home.packages = with pkgs; [
    google-chrome
    nautilus
    vesktop
  ];
}
