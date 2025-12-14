{ config, pkgs, ... }:

{
  imports = [
    ./Modules
  ];

  home.username = "carlinhos";
  home.homeDirectory = "/home/carlinhos";

  home.packages = with pkgs; [
    fastfetch 
    btop      
    eza
    bat

    pamixer
    pavucontrol
    polkit_gnome 

    google-chrome
    vscode

    unzip
  ];
  
  home.stateVersion = "25.11"; 
  programs.home-manager.enable = true;
}